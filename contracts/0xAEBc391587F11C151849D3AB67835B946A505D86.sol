contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint8 stor3; offset 160
address stor3;
uint256 stor5;
mapping of uint256 stor6;
array of uint256 stor8;
uint8 stor9;
array of uint256 stor10;
array of uint256 stor11;
uint256 stor12;
uint8 stor13;
uint256 stor175B;

function _fallback() {
    stor5 = 10^18
    stor6[code.data[6523 len 20]] = 10^18
    uint8(stor8.length) = 28
    Mask(248, 0, stor8.length.field_8) = 'Gold CodeTract' / 256
    idx = 0xf3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636ee3
    while (stor8.length + 31 / 32) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor9 = 18
    uint8(stor10.length) = 6
    Mask(248, 0, stor10.length.field_8) = 'GCT' / 256
    if (stor10.length + 31 / 32) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a8:
        uint256(stor10.field_0) = 0
        idx = 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a9
        while (stor10.length + 31 / 32) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    uint8(stor11.length) = 6
    Mask(248, 0, stor11.length.field_8) = '0.1' / 256
    if (stor11.length + 31 / 32) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9 > 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9:
        stor175B = 0
        idx = 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba
        while (stor11.length + 31 / 32) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor0 = address(code.data[6511 len 32])
    stor2 = address(code.data[6511 len 32])
    address(stor3.field_0) = address(code.data[6511 len 32])
    uint8(stor3.field_160) = 0
    stor12 = 10^18
    stor13 = 18
    return code.data[906 len 5605]
}



// =====================  Runtime code  =====================


address sub_0d14a0e2Address;
mapping of uint8 stor1;
address issuerAddress;
uint8 stor3; offset 160
address safeAddress;
uint256 haltTime;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint256 totalGold;
uint8 goldDecimals;

function name() {
    return name[0 len name.length]
}

function goldDecimals() {
    return goldDecimals
}

function sub_0d14a0e2(?) {
    return sub_0d14a0e2Address
}

function totalSupply() {
    return totalSupply
}

function safe() {
    return safeAddress
}

function issuer() {
    return issuerAddress
}

function decimals() {
    return decimals
}

function freezed(address arg1) {
    return bool(stor1[arg1])
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalGold() {
    return totalGold
}

function halted() {
    return bool(uint8(stor3.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function haltTime() {
    return haltTime
}

function _fallback() {
    revert 
}

function sub_3a5d4daf(?) {
    require totalSupply
    return (totalGold * balanceOf[address(arg1)] / totalSupply)
}

function sub_91c934fc(?) {
    require arg1 <= totalSupply
    require totalSupply
    return (arg1 * totalGold / totalSupply)
}

function sub_a84c33a1(?) {
    require issuerAddress == msg.sender
    emit 0xaeeaa499: address(arg1), safeAddress
    safeAddress = arg1
}

function sub_f738fcd0(?) {
    require issuerAddress == msg.sender
    emit 0x9501501d: address(arg1), sub_0d14a0e2Address
    sub_0d14a0e2Address = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_c38ea1c7(?) {
    require issuerAddress == msg.sender
    totalGold = arg1
    emit 0x8406ebce: 128, 0, arg1, safeAddress, 10, 'updateGold'
    return 1
}

function freeze(address arg1, bool arg2) {
    require sub_0d14a0e2Address == msg.sender
    stor1[address(arg1)] = uint8(arg2)
    emit 0x85a80b3c: address(arg1), arg2
}

function halt(bool arg1) {
    require issuerAddress == msg.sender
    require arg1 != bool(uint8(stor3.field_160))
    if bool(uint8(stor3.field_160)) != 1:
        haltTime = block.timestamp
    else:
        require block.timestamp >= haltTime + (24 * 3600)
    uint8(stor3.field_160) = uint8(arg1)
    emit 0x955cdd4d: bool(0 or uint8(arg1))
}

function transfer(address arg1, uint256 arg2) {
    require bool(uint8(stor3.field_160)) != 1
    require bool(stor1[address(msg.sender)]) != 1
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 50 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function sub_515f69db(?) {
    require sub_0d14a0e2Address == msg.sender
    require bool(uint8(stor3.field_160)) != 1
    require balanceOf[address(arg1)] >= arg2
    require balanceOf[address(stor3.field_0)] + arg2 > balanceOf[address(stor3.field_0)]
    balanceOf[address(arg1)] -= arg2
    balanceOf[address(stor3.field_0)] += arg2
    emit Transfer(arg2, arg1, safeAddress);
    emit 0x4f7f38af: arg2, arg1, safeAddress
    return 1
}

function withdrawToken(address arg1) {
    require issuerAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args safeAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function redeem(uint256 arg1) {
    require issuerAddress == msg.sender
    require totalGold
    require totalSupply * arg1 / totalGold <= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] -= totalSupply * arg1 / totalGold
    require totalSupply * arg1 / totalGold <= totalSupply
    totalSupply -= totalSupply * arg1 / totalGold
    require arg1 <= totalGold
    totalGold -= arg1
    emit 0x8406ebce: Array(len=6, data='redeem'), totalSupply * arg1 / totalGold, arg1, safeAddress
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require bool(uint8(stor3.field_160)) != 1
    require bool(stor1[address(arg1)]) != 1
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function create(uint256 arg1) {
    require issuerAddress == msg.sender
    require totalGold
    require (totalSupply * arg1 / totalGold) + balanceOf[address(stor3.field_0)] >= balanceOf[address(stor3.field_0)]
    require (totalSupply * arg1 / totalGold) + balanceOf[address(stor3.field_0)] >= totalSupply * arg1 / totalGold
    balanceOf[address(stor3.field_0)] += totalSupply * arg1 / totalGold
    require (totalSupply * arg1 / totalGold) + totalSupply >= totalSupply
    require (totalSupply * arg1 / totalGold) + totalSupply >= totalSupply * arg1 / totalGold
    totalSupply += totalSupply * arg1 / totalGold
    require arg1 + totalGold >= totalGold
    require arg1 + totalGold >= arg1
    totalGold += arg1
    emit 0x8406ebce: Array(len=6, data='create'), totalSupply * arg1 / totalGold, arg1, safeAddress
    return 1
}



}
