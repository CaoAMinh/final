import kue from 'kue';
import { db } from './models';
import dotenv from "dotenv";
dotenv.config();

export var queue = kue.createQueue({
    prefix: 'q',
    redis: {
        host: '127.0.0.1',
        port: 6379
    }
});
queue.on('error', function(err) {
    console.error('There was an error with the Redis queue:', err);
});
export default {
    init: () => {
        queue.process('img-upload', function (job, done) {
            Promise.all([
                db.productphoto.bulkCreate(job.data.attachmentEntries),
                db.productphoto.destroy({
                    where: {
                        id: job.data.productId
                    }
                })
            ])
            .then(r => {
                done(true);
            })
            .catch(err => {
                console.log('error - ' + err);
                done(false);
            })
        });
    }
};
