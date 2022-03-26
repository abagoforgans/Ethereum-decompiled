contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2; offset 8
uint256 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    mem[96 len -2318] = code.data[2803 len -2318]
    mem[64] = -2222
    if mem[96] != 0:
        if mem[236 len 20] != 0:
            Mask(248, 0, stor2.field_8) = mem[225 len 31]
            stor3[mem[236 len 20]] = mem[96]
        else:
            Mask(248, 0, stor2.field_8) = Mask(248, 0, msg.sender)
            stor3[address(msg.sender)] = mem[96]
    else:
        if mem[236 len 20] != 0:
            Mask(248, 0, stor2.field_8) = mem[225 len 31]
            stor3[mem[236 len 20]] = 10^6
        else:
            Mask(248, 0, stor2.field_8) = Mask(248, 0, msg.sender)
            stor3[address(msg.sender)] = 10^6
    stor0.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while (stor0.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor1[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    uint256(stor2.field_0) = mem[160]
    return code.data[485 len 2318]
}



// =====================  Runtime code  =====================


#
#  - sub_bd1c08be(?)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address issuerAddress; offset 8
mapping of uint256 balanceOf;
mapping of uint8 stor4;
mapping of uint8 stor5;

function name() {
    return name[0 len name.length]
}

function sub_0b4fd156(?) {
    return bool(stor5[arg1])
}

function issuer() {
    return issuerAddress
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(uint8(stor4[arg1]))
}

function kill() {
    if issuerAddress != msg.sender:
    selfdestruct(issuerAddress)
}

function sub_460246b8(?) {
  stop
}

function _fallback() payable {
    revert 
}

function sub_d0f74108(?) {
    require issuerAddress == msg.sender
    stor5[address(arg1)] = 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == issuerAddress
    balanceOf[address(arg1)] += arg2
    emit 0x2c506545: arg2, 0, arg1
}

function freezeAccount(address arg1, bool arg2) {
    require issuerAddress == msg.sender
    uint256(stor4[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor4[address(arg1)]))
    emit FrozenFunds(address(arg1), arg2);
}



}
