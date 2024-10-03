#!/bin/bash

mkdir -p submission_reminder_app/{app,modules,assets,config}

cd submission_reminder_app

ln -sf /home/zeeyah/Downloads ~/loc

cat ~/loc/reminder.sh > app/reminder.sh
cat ~/loc/functions.sh > modules/functions.sh
cat ~/loc/config.env > config/config.env
cat ../submissions.txt > assets/submission.txt

echo -e "Joshua, Shell Navigation, submitted\nHauwa, Shell Navigation, not submitted\nHamse, Shell Navigation, submitted\nRemy, Shell Navigation, submitted\nHassan, Shell Navigation, not submitted" >> assets/submission.txt

chmod +x app/reminder.sh
chmod +x modules/functions.sh
chmod +x config/config.env

echo -e "#!/bin/bash\n./app/reminder.sh\n./modules/functions.sh\n./config/config.env" > startup.sh && chmod +x startup.sh
