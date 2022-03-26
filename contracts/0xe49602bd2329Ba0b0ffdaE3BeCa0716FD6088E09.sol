contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor0 = 1000
    stor1 = 10
    stor2 = 100
    stor3 = 0
    stor4 = 1
    require not msg.value
    stor5 = msg.sender
    stor6 = 411086 * 3600
    stor7 = 411782 * 3600
    return code.data[124 len 2024]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
mapping of struct kudosGiven;
mapping of struct projectKudos;

function getProjectKudos(bytes32 arg1) {
    return projectKudos[arg1].field_256
}

function getKudosGiven(address arg1) {
    return kudosGiven[address(arg1)].field_256
}

function _fallback() payable {
    revert 
}

function getKudosLeft(address arg1) {
    return (kudosGiven[address(arg1)].field_0 - kudosGiven[address(arg1)].field_256)
}

function grantKudos(address arg1, uint256 arg2) {
    require stor5 == msg.sender
    require kudosGiven[address(arg1)].field_0
    if arg2 != stor3:
        require arg2 == stor4
    require not kudosGiven[address(arg1)].field_512
    require not kudosGiven[address(arg1)][3][arg2].field_0
    kudosGiven[address(arg1)].field_0 += stor2
    kudosGiven[address(arg1)][3][arg2].field_0 = 1
}

function register(address arg1, bool arg2) {
    require stor5 == msg.sender
    require kudosGiven[address(arg1)].field_0 <= 0
    if not arg2:
        kudosGiven[address(arg1)].field_0 = stor1
    else:
        kudosGiven[address(arg1)].field_0 = stor0
    kudosGiven[address(arg1)].field_512 = uint8(arg2)
    kudosGiven[address(arg1)].field_512 = 0
    kudosGiven[address(arg1)].field_768 = 0
}

function getProjectKudosByUsers(bytes32 arg1, address[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 10)
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * idx) + 224] = projectKudos[arg1][mem[(32 * idx) + 140 len 20]].field_0
        idx = idx + 1
        continue 
    mem[(64 * arg2.length) + 224] = 32
    mem[(64 * arg2.length) + 256] = arg2.length
    mem[(64 * arg2.length) + 288 len 32 * arg2.length] = mem[(32 * arg2.length) + 224 len 32 * arg2.length]
    return memory
      from (64 * arg2.length) + 224
       len (161 * arg2.length) + 64
}

function getKudosPerProject(address arg1) {
    if stor9[address(arg1)].field_0:
        mem[192] = stor9[address(arg1)].field_0
        idx = 192
        s = 0
        while (32 * stor9[address(arg1)].field_0) + 160 > idx:
            mem[idx + 32] = stor9[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor9[address(arg1)].field_256:
        mem[(32 * stor9[address(arg1)].field_0) + 224] = stor9[address(arg1)][1].field_0
        idx = (32 * stor9[address(arg1)].field_0) + 224
        s = 0
        while (32 * stor9[address(arg1)].field_0) + (32 * stor9[address(arg1)].field_256) + 192 > idx:
            mem[idx + 32] = stor9[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(64 * stor9[address(arg1)].field_0) + (32 * stor9[address(arg1)].field_256) + 320] = stor9[address(arg1)].field_256
    mem[(64 * stor9[address(arg1)].field_0) + (32 * stor9[address(arg1)].field_256) + 352 len 32 * stor9[address(arg1)].field_256] = mem[(32 * stor9[address(arg1)].field_0) + 224 len 32 * stor9[address(arg1)].field_256]
    return Array(len=stor9[address(arg1)].field_0, data=mem[192 len 32 * stor9[address(arg1)].field_0], stor9[address(arg1)].field_256, mem[(32 * stor9[address(arg1)].field_0) + 224 len 32 * stor9[address(arg1)].field_256]), 
           (32 * stor9[address(arg1)].field_0) + 96
}

function giveKudos(bytes32 arg1, uint256 arg2) {
    require block.timestamp >= stor6
    require block.timestamp < stor7
    require arg2 + kudosGiven[address(msg.sender)].field_256 <= kudosGiven[address(msg.sender)].field_0
    kudosGiven[address(msg.sender)].field_256 += arg2
    projectKudos[arg1].field_256 += arg2
    projectKudos[arg1][address(msg.sender)].field_0 += arg2
    if stor9[address(msg.sender)][2][arg1].field_0:
        require stor9[address(msg.sender)][2][arg1].field_0 - 1 < stor9[address(msg.sender)].field_256
        stor[stor9[address(msg.sender)][2][arg1].field_0 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor9', 9)))].field_0 = arg2 + projectKudos[arg1][address(msg.sender)].field_0
    else:
        stor9[address(msg.sender)].field_0++
        if not stor9[address(msg.sender)].field_0 <= stor9[address(msg.sender)].field_0 + 1:
            idx = stor9[address(msg.sender)].field_0 + 1
            while stor9[address(msg.sender)].field_0 > idx:
                stor9[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor9[address(msg.sender)].field_256++
        require stor9[address(msg.sender)].field_0 < stor9[address(msg.sender)].field_0
        stor9[address(msg.sender)][stor9[address(msg.sender)].field_0].field_0 = arg1
        stor9[address(msg.sender)][2][arg1].field_0 = stor9[address(msg.sender)].field_0 + 1
        require stor9[address(msg.sender)].field_0 < stor9[address(msg.sender)].field_256
        stor[stor9[address(msg.sender)].field_0 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor9', 9)))].field_0 = arg2 + projectKudos[arg1][address(msg.sender)].field_0
    emit Vote(msg.sender, arg1, arg2);
}



}
