contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address profileAddress;
address sub_d6d42fb5Address;
address sub_4ea698f6Address;
address sub_e842426aAddress;
address sub_ec966c16Address;
address sub_a00814c3Address;
address sub_2a0e01d4Address;

function sub_2a0e01d4(?) {
    return sub_2a0e01d4Address
}

function sub_4ea698f6(?) {
    return sub_4ea698f6Address
}

function profileAddress() {
    return profileAddress
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function sub_a00814c3(?) {
    return sub_a00814c3Address
}

function sub_d6d42fb5(?) {
    return sub_d6d42fb5Address
}

function sub_e842426a(?) {
    return sub_e842426aAddress
}

function sub_ec966c16(?) {
    return sub_ec966c16Address
}

function _fallback() payable {
    revert
}

function sub_59e78460(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    profileAddress = arg1
    emit 0x6928914a 
}

function sub_3ed7edc7(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    sub_4ea698f6Address = arg1
    emit 0x6928914a 
}

function sub_53618a57(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    sub_2a0e01d4Address = arg1
    emit 0x6928914a 
}

function sub_5cac9064(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    sub_a00814c3Address = arg1
    emit 0x6928914a 
}

function sub_93bab07f(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    sub_ec966c16Address = arg1
    emit 0x6928914a 
}

function sub_c026258b(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    sub_e842426aAddress = arg1
    emit 0x6928914a 
}

function setTokenAddress(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    tokenAddress = arg1
    emit 0x6928914a 
}

function setHoldingAddress(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    sub_d6d42fb5Address = arg1
    emit 0x6928914a 
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isContract(address arg1) {
    if owner != arg1:
        if tokenAddress != arg1:
            if profileAddress != arg1:
                if sub_d6d42fb5Address != arg1:
                    if sub_4ea698f6Address != arg1:
                        if sub_e842426aAddress != arg1:
                            if sub_ec966c16Address != arg1:
                                if sub_a00814c3Address != arg1:
                                    if sub_2a0e01d4Address != arg1:
                                        return 0
    return 1
}



}
