contract main {


// =======================  Init code  ======================


uint256 stor0;
uint32 stor2;
uint128 stor2; offset 24
uint128 stor2; offset 128
uint256 stor3;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor0 = 0
    stor2.field_0 % 16777216 = 4227500
    Mask(104, 0, stor2.field_24) = 0
    uint128(stor2.field_128) = 0
    stor3 = 100000 * 10^18
    stor4 = 0
    stor5 = 0
    require not msg.value
    return code.data[169 len 1777]
}



// =====================  Runtime code  =====================


const name = 'Consultation Network Platform'

const totalSupply = 0

const decimals = 18

const symbol = 'CNP'


uint256 stor0;
mapping of uint256 balanceOf;
uint8 stor2; offset 128
uint128 stor2;
uint128 stor2; offset 128
uint256 stor3;
uint256 stor4;
uint8 stor5;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require not uint8(stor2.field_128)
    if block.number >= uint128(stor2.field_0):
        if stor5 < 10:
            stor5 = uint8(stor5 + 1)
            balanceOf[address(msg.sender)] += 2 * 100 * msg.value
            stor0 += 2 * 100 * msg.value
            stor4 += msg.value
            if stor4 >= stor3:
                uint128(stor2.field_128) = 1
        else:
            if stor4 >= 1000:
                balanceOf[address(msg.sender)] += 100 * msg.value
                stor0 += 100 * msg.value
            else:
                stor5 = uint8(stor5 + 1)
                balanceOf[address(msg.sender)] += 2 * 100 * msg.value
                stor0 += 2 * 100 * msg.value
            stor4 += msg.value
            if stor4 >= stor3:
                uint128(stor2.field_128) = 1
}



}
