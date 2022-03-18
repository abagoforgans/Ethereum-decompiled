contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor0;
mapping of struct stor1;
array of address stor2;

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    stor1[address(msg.sender)].field_0 = msg.sender
    stor1[address(stor0.field_0)].field_256 = 1
    stor1[address(stor0.field_0)].field_512 = 0
    stor1[address(stor0.field_0)].field_768 = 0
    stor1[address(stor0.field_0)].field_1024 = 0
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    address(stor2[stor2.length]) = address(stor0.field_0)
    return code.data[272 len 851]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct powerBalanceOf;
array of address stor2;

function powerBalanceOf(address arg1) payable {
    return address(powerBalanceOf[arg1].field_0), 
           powerBalanceOf[arg1].field_256,
           powerBalanceOf[arg1].field_512,
           powerBalanceOf[arg1].field_768,
           powerBalanceOf[arg1].field_1024
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function distributePowerToAddress(address arg1, uint256 arg2) payable {
    powerBalanceOf[address(msg.sender)].field_512 += arg2
}

function consumePower(uint256 arg1) payable {
    if powerBalanceOf[address(msg.sender)].field_512 - arg1 > 0:
        powerBalanceOf[address(msg.sender)].field_512 -= arg1
}

function addTenant(address arg1) payable {
    powerBalanceOf[address(arg1)].field_0 = arg1 or Mask(96, 160, powerBalanceOf[address(arg1)].field_0)
    powerBalanceOf[address(arg1)].field_256 = 1
    powerBalanceOf[address(arg1)].field_512 = 0
    powerBalanceOf[address(arg1)].field_768 = 0
    powerBalanceOf[address(arg1)].field_1024 = 0
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
        while stor2.length + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    uint256(stor2[stor2.length]) = arg1 or Mask(96, 160, uint256(stor2[stor2.length]))
}

function distributeGeneratedPower(uint256 arg1) payable {
    s = 0
    s = 0
    idx = 0
    while uint8(idx) < stor2.length:
        require idx < stor2.length
        mem[0] = address(stor2[idx])
        mem[32] = 1
        s = powerBalanceOf[address(stor2[idx])].field_256
        s = address(stor2[idx])
        idx = idx + 1
        continue 
    s = 0
    s = 0
    idx = 0
    s = 256 * None
    s = 160 * None
    while uint8(idx) < stor2.length:
        require idx < stor2.length
        mem[0] = msg.sender
        mem[32] = 1
        powerBalanceOf[address(msg.sender)].field_512 += arg1 * powerBalanceOf[address(stor2[idx])].field_256 / 0
        s = arg1 * powerBalanceOf[address(stor2[idx])].field_256 / 0
        s = powerBalanceOf[address(stor2[idx])].field_256 / 0
        idx = idx + 1
        s = powerBalanceOf[address(stor2[idx])].field_256
        s = address(stor2[idx])
        continue 
}



}
