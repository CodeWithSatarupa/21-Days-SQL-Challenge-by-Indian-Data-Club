/*Identify where and when the crime happened*/
SELECT *FROM keycard_logs
WHERE room = 'CEO Office'AND entry_time <= '2025-10-15 21:00'AND exit_time >= '2025-10-15 21:00';

/*Analyze who accessed critical areas at the time*/
SELECT e.name, k.room, k.entry_time, k.exit_time
FROM keycard_logs k
JOIN employees e ON k.employee_id = e.employee_id
WHERE k.room IN ('CEO Office', 'Server Room')
  AND entry_time <= '2025-10-15 21:00'
  AND exit_time >= '2025-10-15 21:00';

/*Cross-check alibis with actual logs*/
SELECT e.name, a.claimed_location, k.room AS actual_location, k.entry_time, k.exit_time
FROM alibis a
JOIN employees e ON a.employee_id = e.employee_id
JOIN keycard_logs k ON a.employee_id = k.employee_id
WHERE '2025-10-15 21:00' BETWEEN k.entry_time AND k.exit_time
  AND a.claimed_location <> k.room;
  
  /*Investigate suspicious calls made around the time*/
  SELECT e.name AS caller, r.name AS receiver, c.call_time, c.duration_sec
FROM calls c
JOIN employees e ON c.caller_id = e.employee_id
JOIN employees r ON c.receiver_id = r.employee_id
WHERE c.call_time BETWEEN '2025-10-15 20:50' AND '2025-10-15 21:00';

/*Match evidence with movements and claims*/
SELECT e.name, ev.description, k.room, k.entry_time, k.exit_time
FROM evidence ev
JOIN keycard_logs k ON ev.room = k.room
JOIN employees e ON k.employee_id = e.employee_id
WHERE ev.room = 'CEO Office'
  AND '2025-10-15 21:00' BETWEEN k.entry_time AND k.exit_time;

/*Combine all findings to identify the killer*/
SELECT DISTINCT e.name AS killer
FROM employees e
JOIN keycard_logs k ON e.employee_id = k.employee_id
JOIN alibis a ON e.employee_id = a.employee_id
JOIN calls c ON e.employee_id = c.caller_id
JOIN evidence ev ON k.room = ev.room
WHERE k.room = 'CEO Office'
  AND '2025-10-15 21:00' BETWEEN k.entry_time AND k.exit_time
  AND a.claimed_location <> k.room
  AND c.call_time BETWEEN '2025-10-15 20:50' AND '2025-10-15 21:00'
  AND ev.room = 'CEO Office';



/*Explanation*/
/*The CEO was found dead at 9:00 PM. David Kumar entered the CEO Office at that time, had a false alibi claiming to be in the Server Room, made a suspicious call to Alice Johnson shortly before the murder, and evidence in the CEO Office links him directly. This combination of movement, false alibi, call activity, and evidence confirms him as the killer.*/

