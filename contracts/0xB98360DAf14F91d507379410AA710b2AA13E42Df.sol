contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 939]




// =====================  Runtime code  =====================


array of address curator;
mapping of uint256 curatorIDOf;
array of address service;
mapping of uint8 stor3;

function serviceApprovedBy(address arg1, address arg2) {
    return bool(stor3[address(arg1)][address(arg2)])
}

function curatorIDOf(address arg1) {
    return curatorIDOf[address(arg1)]
}

function curatorAddressOf(uint256 arg1) {
    require arg1 < curator.length
    return address(curator[arg1])
}

function serviceAddressOf(address arg1, uint256 arg2) {
    require arg2 < uint256(service[address(arg1)])
    return address(service[address(arg1)][arg2])
}

function _fallback() payable {
    revert 
}

function approve(address arg1) {
    if not curator.length:
        curator.length++
        if not curator.length <= curator.length + 1:
            idx = curator.length + 1
            while curator.length > idx:
                uint256(curator[idx]) = 0
                idx = idx + 1
                continue 
        require curator.length < curator.length
        address(curator[curator.length]) = msg.sender
        curatorIDOf[address(msg.sender)] = curator.length
    else:
        require curatorIDOf[address(msg.sender)] < curator.length
        if address(curator[stor1[address(msg.sender)]]) != msg.sender:
            curator.length++
            if not curator.length <= curator.length + 1:
                idx = curator.length + 1
                while curator.length > idx:
                    uint256(curator[idx]) = 0
                    idx = idx + 1
                    continue 
            require curator.length < curator.length
            address(curator[curator.length]) = msg.sender
            curatorIDOf[address(msg.sender)] = curator.length
    if not stor3[address(msg.sender)][address(arg1)]:
        uint256(service[address(msg.sender)])++
        if not uint256(service[address(msg.sender)]) <= uint256(service[address(msg.sender)]) + 1:
            idx = uint256(service[address(msg.sender)]) + 1
            while uint256(service[address(msg.sender)]) > idx:
                uint256(service[address(msg.sender)][idx]) = 0
                idx = idx + 1
                continue 
        address(service[address(msg.sender)][uint256(service[address(msg.sender)])]) = arg1
        stor3[address(msg.sender)][address(arg1)] = 1
    emit CampaignApproved(msg.sender, arg1);
}



}
