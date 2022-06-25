contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_1e0a0360(?) {
    emit 0x404b6b58: Array(len=arg1.length, data=arg1[all]), arg2
}

function sub_e5bf9c85(?) {
    emit 0x897342f4: Array(len=arg1.length, data=arg1[all]), arg2
}

function sub_5037ea78(?) {
    emit 0xf8ce9046: Array(len=arg1.length, data=arg1[all]), address(arg2)
}

function sub_ef012bd1(?) {
    emit 0x49e87b1f: Array(len=arg1.length, data=arg1[all]), arg2, arg3, address(arg4)
}

function sub_be8c2a7e(?) {
    mem[512 len 0] = None
    emit 0xab014af0: call.func_hash, Array(len=7, data=mem[512 len 224]), arg1, arg2
}

function changeOwner(address arg1) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Contract-Owner'
    stor0 = arg1
}



}
