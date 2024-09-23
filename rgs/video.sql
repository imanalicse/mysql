-- For reprocess video
update shared_s3v3_student_stage_videos set is_published_to_rabbitmq = 0, is_video_processing = 0,
    is_process_failed = 0, process_start_at = null, expired_at = null, deleted_at = null
where is_video_processed = 0 AND is_process_failed = 1 and created >= '2024-03-18';

update shared_s3v3_student_stage_videos set is_published_to_rabbitmq = 0, is_video_processing = 0,
    is_process_failed = 0, process_start_at = null, expired_at = null, deleted_at = null
where is_video_processed = 0 AND is_process_failed = 1 and process_start_at LIKE '2024-09-18%';

select * from shared_s3v3_student_stage_videos where is_video_processed = 0 AND is_process_failed = 1 and created LIKE '2024-03-29%';

update shared_s3v3_student_stage_videos SET expired_at = '2024-03-31 04:51:42', deleted_at = NULL, is_process_failed = 0 WHERE id = 868;

update shared_s3v3_student_stage_videos SET expired_at = '2024-03-31 04:51:42', deleted_at = NULL, is_process_failed = 0,
is_video_processing = 0, is_published_to_rabbitmq = 0 WHERE id = 121;
