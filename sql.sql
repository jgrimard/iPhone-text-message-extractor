.headers on
.mode csv
.output export.csv
SELECT
  chat_message_join.chat_id as chat_id,
  message.rowid as message_id,
  CASE message.is_from_me
    WHEN '1'
      THEN 'ME'
    ELSE handle.id
  END message_from,
  REPLACE(message.text,'￼','(IMAGE)') as message_text,
  datetime(message.date/1000000000+978307200,'unixepoch','localtime') as message_date
FROM chat_message_join
INNER JOIN message
  ON message.rowid = chat_message_join.message_id
LEFT JOIN handle
  ON message.handle_id = handle.rowid
ORDER BY chat_message_join.chat_id;
