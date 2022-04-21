contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
mapping of uint8 stor2;
array of address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor10 = 7
    stor11 = 0
    stor12 = 0
    require not msg.value
    stor0 = msg.sender
    stor3.length = 0xa044d7ef34bfd97100adb861feabe61059099241
    stor4 = 0x8b47d27b085a661e6306ac27a932a8c0b1c11b84
    stor5 = 0xab0461fb41326a960d3a2fe2328dd9a65916181d
    stor6 = 0xd2a131f16e4339b2523ca90431322f559abc4c3d
    stor7 = 0xcdfa60087287395a8994c46f58a0b1af9e295d3f
    stor8 = 0x90e1e6587361dab23415b1b3208d7a3e7191ccda
    stor9 = 0x800b342600ed3f57d9889e5e6957f0e6a056d912
    idx = 0
    while idx < stor10:
        require idx < 7
        stor2[stor3[idx]] = 1
        mem[0] = stor3[idx]
        mem[32] = 1
        stor1[stor3[idx]] = 0
        idx = idx + 1
        continue 
    return code.data[751 len 1658]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
array of address owners;
uint256 numberOfOwners;
uint256 totalEthReceived;
uint256 sub_d2d562a4;

function owners(uint256 arg1) {
    require arg1 < 7
    return owners[arg1]
}

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function numberOfOwners() {
    return numberOfOwners
}

function totalEthReceived() {
    return totalEthReceived
}

function sub_d2d562a4(?) {
    return sub_d2d562a4
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function _fallback() payable {
    require msg.value > 0
    totalEthReceived += msg.value
    emit Deposit(msg.value, msg.sender);
    require numberOfOwners
    idx = 0
    while idx < numberOfOwners:
        require idx < 7
        mem[0] = owners[idx]
        mem[32] = 1
        balanceOf[stor3[idx]] += msg.value / numberOfOwners
        idx = idx + 1
        continue 
}

function sub_ad89ade8(?) {
    require stor2[address(msg.sender)]
    require arg1
    require balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    if ext_call.success:
        emit 0x8018038c: arg1, msg.sender
        balanceOf[address(msg.sender)] -= arg1
        sub_d2d562a4 += arg1
}

function sub_6fe05ac7(?) {
    require stor2[address(msg.sender)]
    idx = 0
    s = 0
    while idx < numberOfOwners:
        require idx < 7
        mem[0] = owners[idx]
        mem[32] = 1
        if balanceOf[stor3[idx]] > 0:
            require idx < 7
            call owners[idx] with:
               value balanceOf[stor3[idx]] wei
                 gas gas_remaining - 34710 wei
            if ext_call.success:
                require idx < 7
                mem[96] = balanceOf[stor3[idx]]
                emit 0x8018038c: balanceOf[stor3[idx]], owners[idx]
                mem[0] = owners[idx]
                mem[32] = 1
                balanceOf[stor3[idx]] = 0
                sub_d2d562a4 += balanceOf[stor3[idx]]
        idx = idx + 1
        s = balanceOf[stor3[idx]]
        continue 
}



}
