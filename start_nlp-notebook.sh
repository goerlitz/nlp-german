# define container name
container="nlp-notebook"

running=$(docker inspect -f {{.State.Running}} $container)

case $running in
"true")
  echo "container '$container' is already running..."
  ;;
"false")
  echo "starting container '$container' ..."
  docker start $container
  ;;
*)
  echo "creating and starting new container '$container'..."
  docker pull jupyter/minimal-notebook
  docker run -d -p 8888:8888 --name $container -v $(pwd)/jupyter:/home/jovyan/work jupyter/minimal-notebook
  # todo: get initial token from logs
  ;;
esac
