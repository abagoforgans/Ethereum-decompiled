contract main {


// =======================  Init code  ======================


mapping of uint8 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6; offset 160

function _fallback() payable {
    stor4 = code.data[1752 len 32]
    stor5 = msg.sender or Mask(96, 160, stor5)
    call code.data[1764 len 20].0xf896503a with:
         gas gas_remaining - 25050 wei
        args 'sale1:address'
    require ext_call.success
    stor3[ext_call.return_data[12 len 20]] = 1
    stor6 = 0
    return code.data[239 len 1513]
}



// =====================  Runtime code  =====================


mapping of struct balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
address stor5;
uint8 stor6; offset 160
uint128 stor6; offset 168
address stor6;
uint256 totalSupply;
uint256 totalBadges;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)].field_256
}

function totalBadges() payable {
    return totalBadges
}

function badgesOf(address arg1) payable {
    return balanceOf[address(arg1)].field_512
}

function allowance(address arg1, address arg2) payable {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function registerSeller(address arg1) payable {
    require msg.sender == address(stor6.field_0)
    stor3[address(arg1)] = 1
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require stor3[address(msg.sender)]
    totalSupply += arg2
    balanceOf[address(arg1)].field_256 += arg2
    return 1
}

function mintBadge(address arg1, uint256 arg2) payable {
    require stor3[address(msg.sender)]
    totalBadges += arg2
    balanceOf[address(arg1)].field_512 += arg2
    return 1
}

function registerDao(address arg1) payable {
    require msg.sender == stor5
    if 1 == uint8(stor6.field_160):
        return 0
    address(stor6.field_0) = arg1
    uint8(stor6.field_160) = 1
    Mask(88, 0, stor6.field_168) = Mask(88, 168, arg1) >> 168
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if balanceOf[address(msg.sender)].field_256 < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)].field_256 -= arg2
    balanceOf[arg1].field_256 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sendBadge(address arg1, uint256 arg2) payable {
    if balanceOf[address(msg.sender)].field_512 < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)].field_512 -= arg2
    balanceOf[arg1].field_512 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if balanceOf[address(arg1)].field_256 < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)].field_256 += arg3
    balanceOf[address(arg1)].field_256 -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
