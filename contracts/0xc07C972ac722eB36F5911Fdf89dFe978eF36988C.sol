contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[1251 len 5268]
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[140 len 1111]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
mapping of uint256 purchaseBalances;
array of address stor3;
address stor4;

function purchaseBalances(address arg1) {
    return purchaseBalances[arg1]
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1 != this.address
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function InvestorBonusGet(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    stor3.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor3[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        stor4 = stor3[idx]
        emit GetBonus(10^18, 0, stor3[idx]);
        mem[(32 * arg1.length) + 132] = stor4
        mem[(32 * arg1.length) + 164] = 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args stor4, 10^18
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
