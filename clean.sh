# run this before pushing to master
sudo find ./vim/bundle -name "*.git*"

while true; do
    read -p "Proceed with cleanup? " yn
    case $yn in
        [Yy]* ) find ./vim/bundle -name "*.git*" -exec rm -r '{}' +; echo "Done."; break;;
        [Nn]* ) echo "Cancelled."; break;;
        * ) echo "Please answer yes or no.";;
    esac
done

