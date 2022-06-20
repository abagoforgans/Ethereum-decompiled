contract main {




// =====================  Runtime code  =====================


mapping of uint8 sub_783a2290;
uint8 stor1;

function sub_783a2290(?) {
    require sub_783a2290[address(arg1)] <= 2
    return sub_783a2290[address(arg1)]
}

function _fallback() payable {
    revert
}

function isAdmin(address arg1) {
    require sub_783a2290[address(arg1)] <= 2
    return sub_783a2290[address(arg1)] >= 1
}

function transferOwnerShip(address arg1) {
    require arg1
    require sub_783a2290[msg.sender] <= 2
    require sub_783a2290[msg.sender] == 2
    if stor1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ownership transferred before, can't call again'
    sub_783a2290[msg.sender] = 0
    sub_783a2290[arg1] = 2
    stor1 = 1
    emit OwnershipTransferred(msg.sender, arg1);
}

function sub_4f9268cd(?) {
    require arg2 <= 2
    require sub_783a2290[msg.sender] <= 2
    if sub_783a2290[msg.sender] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You can't give the authority higher than or same as you.'
    require sub_783a2290[address(arg1)] <= 2
    require sub_783a2290[msg.sender] <= 2
    if sub_783a2290[msg.sender] <= sub_783a2290[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You can only change the authority which belongs to account who has lower level than you.'
    require arg2 <= 2
    sub_783a2290[address(arg1)] = arg2
    emit 0x69c27ddd: address(arg1), arg2
}



}
