contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    call 0x985509582b2c38010bfaa3c8d2be60022d3d00da.register(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'ProjectKudos'
    require ext_call.success
    uint8(stor0.field_160) = 0
    return code.data[185 len 1758]
}



// =====================  Runtime code  =====================


const nameRegAddress = 0x985509582b2c38010bfaa3c8d2be60022d3d00da


uint8 stor0; offset 160
address stor0;
uint256 stor0;
mapping of struct projectKudos;
mapping of struct kudosGiven;
mapping of struct stor3;

function getProjectKudos(address arg1) payable {
    return projectKudos[address(arg1)].field_256
}

function getKudosGiven(address arg1) payable {
    return kudosGiven[address(arg1)].field_256
}

function _fallback() payable {
  stop
}

function finish() payable {
    if msg.sender == address(stor0.field_0):
        uint8(stor0.field_160) = 1
}

function getKudosLeft(address arg1) payable {
    return (kudosGiven[address(arg1)].field_0 - kudosGiven[address(arg1)].field_256)
}

function changeOwner(address arg1) payable {
    if msg.sender == address(stor0.field_0):
        uint256(stor0.field_0) = arg1 or Mask(96, 160, uint256(stor0.field_0))
}

function named(bytes32 arg1) payable {
    call 0x985509582b2c38010bfaa3c8d2be60022d3d00da.addressOf(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function getKudosLeftForProject(address arg1, address arg2) payable {
    if not kudosGiven[address(arg1)].field_512:
        return (kudosGiven[address(arg1)].field_0 - projectKudos[address(arg2)][address(arg1)].field_0)
    return (kudosGiven[address(arg1)].field_0 - kudosGiven[address(arg1)].field_256)
}

function register(address arg1, uint256 arg2, bool arg3) payable {
    if msg.sender == address(stor0.field_0):
        require kudosGiven[address(arg1)].field_0 <= 0
        kudosGiven[address(arg1)].field_0 = arg2
        kudosGiven[address(arg1)].field_512 = arg3 or Mask(248, 8, kudosGiven[address(arg1)].field_512)
}

function getKudosPerProject(address arg1) payable {
    if stor3[address(arg1)].field_0:
        mem[192] = stor3[address(arg1)].field_0
        idx = 192
        s = 0
        while (32 * stor3[address(arg1)].field_0) + 160 > idx:
            mem[idx + 32] = stor3[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor3[address(arg1)].field_256:
        mem[(32 * stor3[address(arg1)].field_0) + 224] = stor3[address(arg1)][1].field_0
        idx = (32 * stor3[address(arg1)].field_0) + 224
        s = 0
        while (32 * stor3[address(arg1)].field_0) + (32 * stor3[address(arg1)].field_256) + 192 > idx:
            mem[idx + 32] = stor3[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(64 * stor3[address(arg1)].field_0) + (32 * stor3[address(arg1)].field_256) + 320] = stor3[address(arg1)].field_256
    mem[(64 * stor3[address(arg1)].field_0) + (32 * stor3[address(arg1)].field_256) + 352 len 32 * stor3[address(arg1)].field_256] = mem[(32 * stor3[address(arg1)].field_0) + 224 len 32 * stor3[address(arg1)].field_256]
    return Array(len=stor3[address(arg1)].field_0, data=mem[192 len 32 * stor3[address(arg1)].field_0], stor3[address(arg1)].field_256, mem[(32 * stor3[address(arg1)].field_0) + 224 len 32 * stor3[address(arg1)].field_256]), 
           (32 * stor3[address(arg1)].field_0) + 96
}

function giveKudos(address arg1, uint256 arg2) payable {
    require uint8(stor0.field_160) != 1
    require kudosGiven[address(msg.sender)].field_0
    if not kudosGiven[address(msg.sender)].field_512:
        if arg2 + projectKudos[address(arg1)][address(msg.sender)].field_0 <= kudosGiven[address(msg.sender)].field_0:
            kudosGiven[address(msg.sender)].field_256 += arg2
            projectKudos[address(arg1)].field_256 += arg2
            projectKudos[address(arg1)][address(msg.sender)].field_0 += arg2
            if stor3[address(msg.sender)][2][address(arg1)].field_0:
                require stor3[address(msg.sender)][2][address(arg1)].field_0 - 1 < stor3[address(msg.sender)].field_256
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))) + stor3[address(msg.sender)][2][address(arg1)].field_0].field_0 = projectKudos[address(arg1)][address(msg.sender)].field_0
            else:
                stor3[address(msg.sender)].field_0++
                if not stor3[address(msg.sender)].field_0 <= stor3[address(msg.sender)].field_0 + 1:
                    idx = stor3[address(msg.sender)].field_0 + 1
                    while stor3[address(msg.sender)].field_0 > idx:
                        stor3[address(msg.sender)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor3[address(msg.sender)].field_256++
                if not stor3[address(msg.sender)].field_256 <= stor3[address(msg.sender)].field_256 + 1:
                    idx = stor3[address(msg.sender)].field_256 + 1
                    while stor3[address(msg.sender)].field_256 > idx:
                        stor3[address(msg.sender)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor3[address(msg.sender)].field_0 < stor3[address(msg.sender)].field_0
                stor3[address(msg.sender)][stor3[address(msg.sender)].field_0].field_0 = arg1 or Mask(96, 160, stor3[address(msg.sender)][stor3[address(msg.sender)].field_0].field_0)
                stor3[address(msg.sender)][2][address(arg1)].field_0 = stor3[address(msg.sender)].field_0 + 1
                require stor3[address(msg.sender)].field_0 < stor3[address(msg.sender)].field_256
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))) + stor3[address(msg.sender)].field_0].field_0 = projectKudos[address(arg1)][address(msg.sender)].field_0
    else:
        if arg2 + kudosGiven[address(msg.sender)].field_256 <= kudosGiven[address(msg.sender)].field_0:
            kudosGiven[address(msg.sender)].field_256 += arg2
            projectKudos[address(arg1)].field_256 += arg2
            projectKudos[address(arg1)][address(msg.sender)].field_0 += arg2
            if stor3[address(msg.sender)][2][address(arg1)].field_0:
                require stor3[address(msg.sender)][2][address(arg1)].field_0 - 1 < stor3[address(msg.sender)].field_256
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))) + stor3[address(msg.sender)][2][address(arg1)].field_0].field_0 = projectKudos[address(arg1)][address(msg.sender)].field_0
            else:
                stor3[address(msg.sender)].field_0++
                if not stor3[address(msg.sender)].field_0 <= stor3[address(msg.sender)].field_0 + 1:
                    idx = stor3[address(msg.sender)].field_0 + 1
                    while stor3[address(msg.sender)].field_0 > idx:
                        stor3[address(msg.sender)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor3[address(msg.sender)].field_256++
                if not stor3[address(msg.sender)].field_256 <= stor3[address(msg.sender)].field_256 + 1:
                    idx = stor3[address(msg.sender)].field_256 + 1
                    while stor3[address(msg.sender)].field_256 > idx:
                        stor3[address(msg.sender)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor3[address(msg.sender)].field_0 < stor3[address(msg.sender)].field_0
                stor3[address(msg.sender)][stor3[address(msg.sender)].field_0].field_0 = arg1 or Mask(96, 160, stor3[address(msg.sender)][stor3[address(msg.sender)].field_0].field_0)
                stor3[address(msg.sender)][2][address(arg1)].field_0 = stor3[address(msg.sender)].field_0 + 1
                require stor3[address(msg.sender)].field_0 < stor3[address(msg.sender)].field_256
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))) + stor3[address(msg.sender)].field_0].field_0 = projectKudos[address(arg1)][address(msg.sender)].field_0
}



}
