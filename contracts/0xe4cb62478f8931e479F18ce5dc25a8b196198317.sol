contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    call 0xd63aa3b2f964bfdc575dcdf6af31e2c60afe58b1.0x8e1a55fc with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor0 = ext_call.return_data[0] or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[228 len 4179]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 sub_ba850a63; offset 160
address _dbAddress;
address sub_604bcb3bAddress;
uint256 stor1;
mapping of uint256 sub_67ce36c3;

function _db() payable {
    return _dbAddress
}

function sub_604bcb3b(?) payable {
    return address(sub_604bcb3bAddress)
}

function sub_67ce36c3(?) payable {
    return sub_67ce36c3[address(arg1)]
}

function sub_8f666f94(?) payable {
    return sub_67ce36c3[tx.origin]
}

function sub_ba850a63(?) payable {
    return (sub_ba850a63 << 248)
}

function supply() payable {
    call _dbAddress.supply() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balances(address arg1) payable {
    call _dbAddress.0x27e235e3 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function _fallback() payable {
    call _dbAddress.0x30dc9cee with:
         gas gas_remaining - 25050 wei
        args msg.sender, msg.value
    require ext_call.success
    return ext_call.return_data[0]
}

function burn(uint256 arg1, bytes arg2) payable {
    call _dbAddress.0x73eb4ed with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function withdraw(uint256 arg1) payable {
    call _dbAddress.0x3fbe4a6b with:
         gas gas_remaining - 25050 wei
        args msg.sender, address('ORIGIN_BUFFERS'), arg1
    require ext_call.success
    if ext_call.return_data[0]:
        sub_67ce36c3[tx.origin] += arg1
    return ext_call.return_data[0]
}

function sub_084c4174(?) payable {
    call _dbAddress.0x73eb4ed with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg1
    require ext_call.success
    if ext_call.return_data[0]:
        call msg.sender with:
           value arg1 wei
             gas gas_remaining - 34050 wei
    return ext_call.return_data[0]
}

function charge(uint256 arg1) payable {
    if sub_67ce36c3[tx.origin] < arg1:
        return 0
    call _dbAddress.0x3fbe4a6b with:
         gas gas_remaining - 25050 wei
        args address('ORIGIN_BUFFERS'), msg.sender, arg1
    require ext_call.success
    if ext_call.return_data[0]:
        sub_67ce36c3[tx.origin] -= arg1
    return ext_call.return_data[0]
}

function sub_f427bd46(?) payable {
    if not stor0:
        if address(sub_604bcb3bAddress) != msg.sender:
            return 0
    else:
        if sub_ba850a63 << 248 != 0x100000000000000000000000000000000000000000000000000000000000000:
            return 0
        call address(sub_604bcb3bAddress).0xa59c3e45 with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        if not ext_call.return_data[0]:
            if address(sub_604bcb3bAddress) != msg.sender:
                return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    stor0 = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    call _dbAddress.0x27e235e3 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] >= arg2:
        call _dbAddress.0x3fbe4a6b with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(arg1), arg2
        require ext_call.success
        return ext_call.return_data[0]
    if tx.origin != msg.sender:
        return 0
    if sub_67ce36c3[tx.origin] < arg2 - ext_call.return_data[0]:
        return 0
    call _dbAddress.0x3fbe4a6b with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(arg1), ext_call.return_data[0]
    require ext_call.success
    call _dbAddress.0x3fbe4a6b with:
         gas gas_remaining - 25050 wei
        args address('ORIGIN_BUFFERS'), address(arg1), arg2 - ext_call.return_data[0]
    sub_67ce36c3[tx.origin] = sub_67ce36c3[tx.origin] - arg2 + ext_call.return_data[0]
    return 1
}

function sub_5fc4e171(?) payable {
    mem[128 len arg3.length] = arg3[all]
    if tx.origin != msg.sender:
        return 0
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = address('ORIGIN_BUFFERS')
    mem[ceil32(arg3.length) + 196] = arg1
    call _dbAddress.0x3fbe4a6b with:
         gas gas_remaining - 25050 wei
        args msg.sender, address('ORIGIN_BUFFERS'), arg1
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    sub_67ce36c3[tx.origin] += arg1
    mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        call arg2 with:
             gas gas_remaining - 25050 wei
            args arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg2.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25050 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    return ext_call.success
}



}
