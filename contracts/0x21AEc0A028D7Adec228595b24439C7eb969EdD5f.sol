contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 203462379904501283815424
    stor1 = 0
    require not msg.value
    return code.data[50 len 7617]
}



// =====================  Runtime code  =====================


#
#  - claimBoard(uint256[81] arg1)
#  - validateBoard(uint256[81] arg1)
#
const compressBoard(uint256[81] arg1) = t

const name = 'Sudokoin'

const decimals = 12

const symbol = 'SDK'


uint256 totalSupply;
uint256 boards;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint8 stor4;

function claimedBoards(uint256 arg1) {
    return bool(stor4[arg1])
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function boards() {
    return boards
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function nextReward(uint256 arg1) {
    if arg1 < 11572:
        return 576460752303423488
    if arg1 < 23144:
        return 288230376151711744
    if arg1 < 46288:
        return 144115188075855872
    if arg1 < 92577:
        return 72057594037927936
    if arg1 < 185154:
        return 36028797018963968
    if arg1 < 370309:
        return '@'
    if arg1 < 740619:
        return ' '
    if arg1 < 1481238:
        return 4503599627370496
    if arg1 < 2962476:
        return 2251799813685248
    if arg1 < 5924952:
        return 1125899906842624
    if arg1 < 11849905:
        return 562949953421312
    if arg1 < 23699811:
        return 281474976710656
    if arg1 < 47399622:
        return 140737488355328
    if arg1 < 94799244:
        return 70368744177664
    if arg1 < 189598488:
        return 35184372088832
    if arg1 < 379196976:
        return 17592186044416
    if arg1 < 758393952:
        return 8796093022208
    if arg1 < 1516787904:
        return 4398046511104
    if arg1 < 3033575809:
        return 2199023255552
    if arg1 < 6067151618:
        return 1099511627776
    if arg1 < 12134303237:
        return 549755813888
    if arg1 < 24268606474:
        return 274877906944
    if arg1 < 48537212948:
        return 137438953472
    if arg1 < 97074425896:
        return 68719476736
    if arg1 < 194148851792:
        return 34359738368
    if arg1 < 388297703584:
        return 17179869184
    if arg1 < 776595407168:
        return 8589934592
    if arg1 < 1553190814336:
        return 4294967296
    if arg1 < 3106381628672:
        return 2147483648
    if arg1 < 6212763257344:
        return 1073741824
    if arg1 < 12425526514688:
        return 536870912
    if arg1 < 24851053029377:
        return 268435456
    if arg1 < 49702106058754:
        return 134217728
    if arg1 < 99404212117509:
        return 67108864
    if arg1 < 198808424235018:
        return 33554432
    if arg1 < 397616848470036:
        return 16777216
    if arg1 < 795233696940073:
        return 8388608
    if arg1 < 1590467393880146:
        return 4194304
    if arg1 < 3180934787760292:
        return 2097152
    if arg1 < 6361869575520585:
        return 1048576
    if arg1 < 12723739151041170:
        return 524288
    if arg1 < 25447478302082340:
        return 262144
    if arg1 < 50894956604164680:
        return 131072
    if arg1 < 101789913208329360:
        return 65536
    if arg1 < 203579826416658720:
        return 32768
    if arg1 < 407159652833317440:
        return 16384
    if arg1 < 814319305666634880:
        return 8192
    if arg1 < 1628638611333269760:
        return 4096
    if arg1 < 3257277222666539520:
        return 2048
    if arg1 < 6514554445333079040:
        return 1024
    if arg1 < 13029108890666158080:
        return 512
    if arg1 < 26058217781332316160:
        return 256
    if arg1 < 52116435562664632320:
        return 128
    if arg1 < 104232871125329264640:
        return 64
    if arg1 < 208465742250658529280:
        return 32
    if arg1 < 416931484501317058560:
        return 16
    if arg1 < 833862969002634117120:
        return 8
    if arg1 < 1667725938005268234240:
        return 4
    if arg1 < 3335451876010536468480:
        return 2
    if arg1 >= 6670903752021072936960:
        return 0
    return 1
}



}
