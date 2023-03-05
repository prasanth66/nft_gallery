if [ -z "$1" ]
  then
    echo "Which env do you want to restore for?"
    exit 1
fi
echo 'Creating db...'
npm run db:create --env=$1
