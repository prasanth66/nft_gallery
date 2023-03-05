if [ -z "$1" ]
  then
    echo "Which env do you want to run the seeder?"
    exit 1
fi
echo 'Running Seeder...'
NODE_ENV=$1 npm run db:seed:all --env=$1