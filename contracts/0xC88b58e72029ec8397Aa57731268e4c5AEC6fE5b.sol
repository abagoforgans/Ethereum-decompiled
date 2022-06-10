contract main {




// =====================  Runtime code  =====================


address owner;
address inbestDistributionAddress;
array of address sub_2ad635b4;
mapping of address sub_156a657b;
mapping of uint8 stor4;

function sub_156a657b(?) {
    return sub_156a657b[arg1]
}

function sub_2ad635b4(?) {
    require arg1 < sub_2ad635b4.length
    return sub_2ad635b4[arg1]
}

function admins(address arg1) {
    return bool(stor4[arg1])
}

function inbestDistribution() {
    return inbestDistributionAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addWallet(address arg1) {
    require msg.sender == owner
    require arg1
    require not sub_156a657b[address(arg1)]
    sub_2ad635b4.length++
    sub_2ad635b4[sub_2ad635b4.length] = arg1
    sub_156a657b[address(arg1)] = arg1
}

function distributeTokens() {
    require 0 < sub_2ad635b4.length
    idx = 0
    while idx < sub_2ad635b4.length:
        mem[0] = 2
        mem[96] = 0xc89a0df00000000000000000000000000000000000000000000000000000000
        mem[100] = sub_2ad635b4[idx]
        require ext_code.size(inbestDistributionAddress)
        call inbestDistributionAddress.transferTokens(address arg1) with:
             gas gas_remaining wei
            args sub_2ad635b4[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function addWallets(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == owner
        require mem[(32 * idx) + 140 len 20]
        require not sub_156a657b[mem[(32 * idx) + 140 len 20]]
        sub_2ad635b4.length++
        sub_2ad635b4[sub_2ad635b4.length] = mem[(32 * idx) + 140 len 20]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        sub_156a657b[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function removeWallet(address arg1) {
    require msg.sender == owner
    idx = 0
    while idx < sub_2ad635b4.length:
        mem[0] = 2
        if sub_2ad635b4[idx] == arg1:
            require sub_2ad635b4.length - 1 < sub_2ad635b4.length
            require idx < sub_2ad635b4.length
            sub_2ad635b4[idx] = sub_2ad635b4[sub_2ad635b4.length]
            sub_2ad635b4.length--
            if sub_2ad635b4.length > sub_2ad635b4.length - 1:
                s = sub_2ad635b4.length + sha3(2) - 1
                while sha3(2) + sub_2ad635b4.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = arg1
            mem[32] = 3
            sub_156a657b[address(arg1)] = 0
        idx = idx + 1
        continue 
}

function distributeTokensToWallets(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require 0 < arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xc89a0df00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_9)
        require ext_code.size(inbestDistributionAddress)
        call inbestDistributionAddress.transferTokens(address arg1) with:
             gas gas_remaining wei
            args address(_9)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
