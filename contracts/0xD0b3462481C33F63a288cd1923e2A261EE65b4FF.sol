contract main {


// =======================  Init code  ======================


address stor4;
address stor5;

function _fallback() {
    stor4 = code.data[2309 len 20]
    stor5 = code.data[2341 len 20]
    return code.data[104 len 2193]
}



// =====================  Runtime code  =====================


const name = ''

const decimals = 0

const symbol = ''


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
address stor4;
address stor5;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_981af538(?) {
    require bool(stor3[address(msg.sender)]) != 1
    require ext_code.size(stor4)
    call stor4.0x8015da19 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    balanceOf[address(msg.sender)]++
    totalSupply++
    emit Transfer(1, 0, msg.sender);
    stor3[address(msg.sender)] = 1
    return 1
}

function sub_4fc97cdf(?) {
    require stor5 == msg.sender
    require bool(stor3[address(arg1)]) != 1
    require ext_code.size(stor4)
    call stor4.0x8015da19 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    balanceOf[address(arg1)]++
    totalSupply++
    emit Transfer(1, 0, arg1);
    stor3[address(arg1)] = 1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_3393ccd2(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor5 == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        require bool(stor3[mem[(32 * idx) + 140 len 20]]) != 1
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = address(_21)
        require ext_code.size(stor4)
        call stor4.0x8015da19 with:
             gas gas_remaining - 710 wei
            args address(_21)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            balanceOf[address(_21)]++
            totalSupply++
            mem[(32 * arg1.length) + 128] = 1
            emit Transfer(1, 0, address(_21));
            mem[0] = address(_21)
            mem[32] = 3
            stor3[address(_21)] = 1
        idx = idx + 1
        continue 
    return 1
}



}
