# alias dfnupdate="sudo dnf group install -y --refresh custom-environment minimal-environment kde-desktop-environment basic-desktop-environment admin-tools books c-development cloud-infrastructure container-management d-development design-suite development-tools editors education libreoffice  medical network-server neuron-modelling-simulators office text-internet window-managers graphical-internet kde-desktop fonts games hardware-support sound-and-video system-tools; sudo dnf upgrade -y; sudo dnf distro-sync -y; \
# conda update -q conda -y; conda update -q --all -y; sudo snap refresh"

# alias quietupdate="(
#   ( \
#     sudo dnf group install -yq --refresh custom-environment minimal-environment kde-desktop-environment basic-desktop-environment admin-tools books c-development cloud-infrastructure container-management d-development design-suite development-tools editors education libreoffice medical network-server neuron-modelling-simulators office text-internet window-managers graphical-internet kde-desktop fonts games hardware-support sound-and-video system-tools; \
#     sudo dnf upgrade -yq; \
#     sudo dnf distro-sync -yq \
#   ) & \
#   ( \
#     conda update -q conda -y; \
#     conda update -q --all -y \
#   ) & \
# )"
