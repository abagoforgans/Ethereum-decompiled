contract main {




// =====================  Runtime code  =====================


#
#  - getNewGens(address arg1, uint256 arg2)
#
const ROLE_PAUSE_ADMIN = 'pauseAdmin'

const ROLE_ADMIN = ''


mapping of uint8 stor0;
address stor1;
mapping of uint8 stor99;

function _fallback() payable {
    revert
}

function sub_d7690770(?) {
    mem[160 len 0] = None
    mem[160] = Mask(216, 40, mem[160])
    require stor0[mem[160 len 5]][address(msg.sender)]
    stor1 = arg1
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + arg2.length + 128] = 0
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function adminRemoveRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 0x61646d696e0000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 192 len 0] = None
    mem[ceil32(arg2.length) + 192] = Mask(216, 40, mem[ceil32(arg2.length) + 192])
    mem[ceil32(arg2.length) + 197] = 0
    require stor0[mem[ceil32(arg2.length) + 192 len 5]][address(msg.sender)]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + arg2.length + 192] = 0
    stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)] = 0
    mem[ceil32(arg2.length) + 224] = 64
    mem[ceil32(arg2.length) + 256] = arg2.length
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit RoleRemoved(address arg1, string arg2):
                         address(arg1),
                         mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                         mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                         Mask(8 * arg2.length % 32, 0, 0),
                         mem[ceil32(arg2.length) + arg2.length + 224 len 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit RoleRemoved(address arg1, string arg2):
                         address(arg1),
                         mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                         mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                         Mask(8 * arg2.length % 32, 0, 0),
                         mem[ceil32(arg2.length) + arg2.length + 224 len -(arg2.length % 32) + 96],
}

function adminAddRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 0x61646d696e0000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 192 len 0] = None
    mem[ceil32(arg2.length) + 192] = Mask(216, 40, mem[ceil32(arg2.length) + 192])
    mem[ceil32(arg2.length) + 197] = 0
    require stor0[mem[ceil32(arg2.length) + 192 len 5]][address(msg.sender)]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + arg2.length + 192] = 0
    stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)] = 1
    mem[ceil32(arg2.length) + 192] = arg1
    mem[ceil32(arg2.length) + 224] = 64
    mem[ceil32(arg2.length) + 256] = arg2.length
    if 0 < arg2.length:
        mem[ceil32(arg2.length) + 288] = mem[128]
        mem[ceil32(arg2.length) + 320 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    if not arg2.length % 32:
        emit RoleAdded(address arg1, string arg2):
                       address(arg1),
                       mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                       mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                       Mask(8 * arg2.length % 32, 0, 0),
                       mem[ceil32(arg2.length) + arg2.length + 224 len 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit RoleAdded(address arg1, string arg2):
                       address(arg1),
                       mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                       mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                       Mask(8 * arg2.length % 32, 0, 0),
                       mem[ceil32(arg2.length) + arg2.length + 224 len -(arg2.length % 32) + 96],
}



}
