contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;

function _fallback() payable {
    mem[96 len -1204] = code.data[1564 len -1204]
    mem[64] = -1108
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2 = mem[160]
    return code.data[360 len 1204]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
  stop
}

function sub_221e2efc(?) payable {
    call arg1.0x207c64fb with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    call arg1.0x207c64fb with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if balanceOf[address(arg2)] < arg3:
        return 0
    balanceOf[address(arg2)] -= arg3
    emit Transfer(arg3, arg2, 0);
    return 1
}

function deposit(address arg1, address arg2, uint256 arg3) payable {
    call arg1.0x207c64fb with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, 0, arg2);
    return 1
}

function transfer(address arg1, address arg2, address arg3, uint256 arg4) payable {
    call arg1.0x207c64fb with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require balanceOf[address(arg3)] >= arg4
    require arg4 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg3)] -= arg4
    balanceOf[arg2] += arg4
    emit Transfer(arg4, arg3, arg2);
    return 1
}



}
