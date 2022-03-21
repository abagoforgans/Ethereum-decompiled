contract main {


// =======================  Init code  ======================


array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;

function _fallback() payable {
    mem[96 len -1445] = code.data[1831 len -1445]
    mem[64] = -1349
    mem[0] = 2
    stor2.length = (2 * mem[mem[96] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4 = mem[160]
    return code.data[386 len 1445]
}



// =====================  Runtime code  =====================


address sub_94a43e5cAddress;
uint256 stor0;
address sub_05f474a8Address;
uint256 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;

function sub_05f474a8(?) payable {
    return address(sub_05f474a8Address)
}

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function sub_94a43e5c(?) payable {
    return address(sub_94a43e5cAddress)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
  stop
}

function sub_6b718db9(?) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function sub_c174dce3(?) payable {
    if address(sub_05f474a8Address) != 0:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function validate(address arg1) payable {
    call address(sub_05f474a8Address).0x207c64fb with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) payable {
    call address(sub_05f474a8Address).0x207c64fb with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if balanceOf[address(arg1)] < arg2:
        return 0
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function deposit(address arg1, uint256 arg2) payable {
    call address(sub_05f474a8Address).0x207c64fb with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    call address(sub_05f474a8Address).0x207c64fb with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require balanceOf[address(arg2)] >= arg3
    require arg3 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg2)] -= arg3
    balanceOf[arg1] += arg3
    emit Transfer(arg3, arg2, arg1);
    return 1
}



}
