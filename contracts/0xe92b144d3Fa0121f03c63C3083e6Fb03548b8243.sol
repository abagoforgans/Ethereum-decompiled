contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor2;
uint8 stor3; offset 96
uint32 stor3; offset 64
uint64 stor3;
uint128 stor3;
address stor3; offset 104
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    Mask(96, 0, stor3.field_0) = Mask(96, 0, 'SOAR')
    uint64(stor3.field_0) = uint64('Soarcoin')
    uint32(stor3.field_64) = 0
    uint8(stor3.field_96) = 6
    Mask(152, 0, stor3.field_104) = Mask(152, 104, 'SOAR') >> 104
    Mask(152, 0, stor3.field_104) = Mask(152, 104, 'Soarcoin') >> 104
    stor5 = 0
    require not msg.value
    stor0 = msg.sender
    stor4 = code.data[1700 len 32]
    stor2[address(msg.sender)] = code.data[1700 len 32]
    return code.data[194 len 1506]
}



// =====================  Runtime code  =====================


const approve(address arg1, uint256 arg2) = 0

const transferFrom(address arg1, address arg2, uint256 arg3) = 0

const allowance(address arg1, address arg2) = 0


address owner;
address sub_59138d13Address;
mapping of uint256 balanceOf;
uint8 decimals; offset 96
uint64 name;
uint256 symbol; offset 64
uint256 totalSupply;
uint8 stor5;

function name() {
    return Mask(64, 192, name)
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_59138d13(?) {
    return sub_59138d13Address
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return (symbol << 224)
}

function _fallback() payable {
    revert 
}

function stopMint() {
    if owner == msg.sender:
        stor5 = 1
}

function sub_aaf50292(?) {
    if owner == msg.sender:
        sub_59138d13Address = arg1
}

function mint(uint256 arg1) {
    if owner == msg.sender:
        if arg1 <= 0:
            require stor5
        balanceOf[address(msg.sender)] += arg1
        totalSupply += arg1
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if sub_59138d13Address != msg.sender:
        emit 0xda30cab8: msg.sender
        return 0
    require arg3 > 0
    if balanceOf[address(arg1)] >= arg3:
        if balanceOf[address(arg1)] < arg3:
            return 0
        balanceOf[address(arg1)] -= arg3
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
    return 1
}



}
