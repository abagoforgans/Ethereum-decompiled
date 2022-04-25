contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor3;

function _fallback() payable {
    stor1 = 2
    stor3 = 0x121f4eeee1118423a982326cac955182ab397f5b
    require not msg.value
    return code.data[73 len 14649]
}



// =====================  Runtime code  =====================


const name = Array(len=49, data=0xe29880efb88f20504c41534d49554d202d20506c61736d6120736d6172742063, 'ontract generator', Mask(136, -256, 0xe29880efb88f20504c41534d49554d202d20506c61736d6120736d6172742063, 'ontract generator') << 256)

const decimals = 0


uint8 stor0;
uint256 stor1;
array of address tokenContract;
address stor3;

function totalSupply() {
    return tokenContract.length
}

function TokenContract(uint256 arg1) {
    require arg1 < tokenContract.length
    return address(tokenContract[arg1])
}

function sub_f568dccd(?) {
    return bool(stor0)
}

function sub_3b1c5afc(?) {
    return tokenContract.length^stor1
}

function transferOwner(address arg1) {
    require stor3 == msg.sender
    require msg.sender
    if arg1:
        stor3 = arg1
}

function sub_2cc8d34e(?) {
    idx = 0
    while idx < tokenContract.length:
        mem[0] = 2
        if address(tokenContract[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_6de40025(?) {
    idx = 0
    while idx < tokenContract.length:
        mem[0] = 2
        if address(tokenContract[idx]) != arg1:
            idx = idx + 1
            continue 
        return idx
    return 0
}

function sub_18e65f19(?) {
    require stor3 == msg.sender
    require msg.sender
    s = 0
    idx = 0
    while idx < tokenContract.length:
        mem[0] = 2
        mem[96] = 0x2fd444ec00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = stor3
        require ext_code.size(address(tokenContract[idx]))
        call address(tokenContract[idx]).0x2fd444ec with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2, stor3
        require ext_call.success
        s = address(tokenContract[idx])
        idx = idx + 1
        continue 
    stor0 = uint8(arg3)
    stor1 = arg4
}

function _fallback() payable {
    if msg.value / 10^18 < tokenContract.length^stor1:
        require stor3 == msg.sender
    require not stor0
    create contract with 0 wei
                    code: code.data[1790 len 12816], address(msg.sender), stor3
    require create.new_address
    tokenContract.length++
    if not tokenContract.length <= tokenContract.length + 1:
        idx = tokenContract.length + 1
        while tokenContract.length > idx:
            uint256(tokenContract[idx]) = 0
            idx = idx + 1
            continue 
    require tokenContract.length < tokenContract.length
    address(tokenContract[tokenContract.length]) = address(create.new_address)
    emit 0x48cc7934: address(create.new_address), tokenContract.length^stor1
    call stor3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
