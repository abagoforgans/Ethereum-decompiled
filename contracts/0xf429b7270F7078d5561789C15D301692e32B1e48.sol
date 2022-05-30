contract main {




// =====================  Runtime code  =====================


const sub_0423d0d5(?) = (4 * 3600)

const sub_d9c6176c(?) = (24 * 3600)


address owner;
mapping of uint8 stor1;
uint8 stor2;
mapping of uint256 sub_7f2d67be;

function isPauser(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
}

function paused() {
    return bool(stor2)
}

function sub_7f2d67be(?) {
    return sub_7f2d67be[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renouncePauser() {
    require msg.sender
    stor1[address(msg.sender)] = 0
}

function isActivated(address arg1) {
    return block.timestamp <= sub_7f2d67be[address(arg1)]
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require stor2
    stor2 = 0
    emit Unpaused()
}

function pause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor2
    stor2 = 1
    emit Paused()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) {
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function activate() {
    require block.timestamp + (4 * 3600) >= block.timestamp
    require block.timestamp + (4 * 3600) >= sub_7f2d67be[msg.sender]
    if sub_7f2d67be[msg.sender] >= block.timestamp:
        require sub_7f2d67be[msg.sender] + (24 * 3600) >= sub_7f2d67be[msg.sender]
        sub_7f2d67be[msg.sender] += 24 * 3600
        return (sub_7f2d67be[msg.sender] + (24 * 3600))
    require block.timestamp + (24 * 3600) >= block.timestamp
    sub_7f2d67be[msg.sender] = block.timestamp + (24 * 3600)
    return (block.timestamp + (24 * 3600))
}



}
