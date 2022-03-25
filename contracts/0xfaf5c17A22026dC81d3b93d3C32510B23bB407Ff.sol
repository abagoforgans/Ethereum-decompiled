contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
address stor5;
mapping of uint256 stor6;
address stor8;
uint256 stor9;
address stor10;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0xb43f39d63c69e6451167de6170deaa1d7e503623
    stor8 = 0xc7c40ad438a86d4bdea1f013a1ed8eefa357fbc1
    stor9 = msg.sender or Mask(96, 160, stor9)
    stor10 = 0x20fc0ff622688489e3c2d850f9e473a32f410159
    stor6[stor5] = 50600000
    stor4 = 50600000
    bool(stor1.length) = 0
    stor1.length.field_1 = 5
    stor1.length.field_8 = 'Glass' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_232 = 14855330
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 2
    call msg.sender with:
       value msg.value wei
         gas 0 wei
    stor10 = 0x20fc0ff622688489e3c2d850f9e473a32f410159
    return code.data[1187 len 3855]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address sub_b0987c03Address;
address owner1;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function standard() payable {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function owner1() payable {
    return owner1
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_b0987c03(?) payable {
    return sub_b0987c03Address
}

function allowance(address arg1, address arg2) payable {
    return allowance[arg1][arg2]
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function collectExcess() payable {
    if owner == msg.sender:
        call owner with:
           value eth.balance(this.address) - 2100000 wei
             gas 0 wei
}

function sub_785af1fa(?) payable {
    if owner1 == msg.sender:
        call sub_b0987c03Address.0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(arg1), arg2
        require ext_call.success
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
