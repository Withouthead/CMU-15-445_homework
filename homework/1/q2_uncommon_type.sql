select type, primary_title, runtime_minutes from titles where runtime_minutes >= (SELECT max(runtime_minutes) from titles) ORDER by type ASC, primary_title DESC;


