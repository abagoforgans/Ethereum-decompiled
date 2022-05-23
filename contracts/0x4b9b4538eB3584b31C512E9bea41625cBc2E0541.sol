contract main {




// =====================  Runtime code  =====================


const ROLE_ADMIN = 'admin'


mapping of uint8 stor0;
mapping of uint8 stor99;

function _fallback() payable {
    revert
}

function addAdmin(address arg1) {
    mem[160 len 0] = None
    require stor0[mem[160 len 5]][address(msg.sender)]
    mem[224 len 0] = None
    stor0[mem[224 len 5]][address(arg1)] = 1
    emit RoleAdded('admin', address(arg1));
}

function removeAdmin(address arg1) {
    mem[160 len 0] = None
    require stor0[mem[160 len 5]][address(msg.sender)]
    mem[224 len 0] = None
    stor0[mem[224 len 5]][address(arg1)] = 0
    emit RoleRemoved('admin', address(arg1));
}

function sub_7026fe9c(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    require stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][address(arg2)]
}

function hasRole(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 128] = bool(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][address(arg2)])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_fe6fdc7e(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 7
    mem[ceil32(arg1.length) + 160] = 'manager'
    mem[ceil32(arg1.length) + 224 len 0] = None
    mem[ceil32(arg1.length) + 231] = '-'
    mem[ceil32(arg1.length) + 232 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 264 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 232 len floor32(arg1.length + 8)] = mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 8)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 8) + -(arg1.length + 8 % 32) + 264 len arg1.length + 8 % 32] = mem[ceil32(arg1.length) + -(arg1.length + 8 % 32) + floor32(arg1.length + 8) + 256 len arg1.length + 8 % 32]
    mem[(2 * arg1.length) + ceil32(arg1.length) + 240] = 0
    mem[arg1.length + ceil32(arg1.length) + 232] = bool(stor[mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 8) + 232 len arg1.length + -floor32(arg1.length + 8) + 40]][mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 8)]][address(arg2)])
    return memory
      from arg1.length + ceil32(arg1.length) + 232
       len 32
}

function sub_a876a56c(?) {
    mem[160 len 0] = None
    mem[165] = 0
    require stor0[mem[160 len 5]][address(msg.sender)]
    mem[192 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 192] = 7
    mem[ceil32(arg1.length) + 224] = 'manager'
    mem[ceil32(arg1.length) + 288 len 0] = None
    mem[ceil32(arg1.length) + 295] = '-'
    mem[ceil32(arg1.length) + 296 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 328 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 296 len floor32(arg1.length + 8)] = mem[ceil32(arg1.length) + 288 len floor32(arg1.length + 8)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 8) + -(arg1.length + 8 % 32) + 328 len arg1.length + 8 % 32] = mem[ceil32(arg1.length) + -(arg1.length + 8 % 32) + floor32(arg1.length + 8) + 320 len arg1.length + 8 % 32]
    mem[(2 * arg1.length) + ceil32(arg1.length) + 304] = 0
    stor[mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 8) + 296 len arg1.length + -floor32(arg1.length + 8) + 40]][mem[ceil32(arg1.length) + 288 len floor32(arg1.length + 8)]][address(arg2)] = 1
    emit RoleAdded(Array(len=arg1.length + 8, data=Mask(8 * arg1.length + 8, -(8 * arg1.length + 8) + 256, mem[ceil32(arg1.length) + 288 len 7], '-', call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 296 len arg1.length % 32], Mask(8 * floor32(arg1.length + 39) + -arg1.length - 8, -(8 * floor32(arg1.length + 39) + -arg1.length - 8) + 256, 64) >> -(8 * floor32(arg1.length + 39) + -arg1.length - 8) + 256) << (8 * arg1.length + 8) - 256), address(arg2));
}

function sub_560b5c7c(?) {
    mem[160 len 0] = None
    mem[165] = 0
    require stor0[mem[160 len 5]][address(msg.sender)]
    mem[192 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 192] = 7
    mem[ceil32(arg1.length) + 224] = 'manager'
    mem[ceil32(arg1.length) + 288 len 0] = None
    mem[ceil32(arg1.length) + 295] = '-'
    mem[ceil32(arg1.length) + 296 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 328 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 296 len floor32(arg1.length + 8)] = mem[ceil32(arg1.length) + 288 len floor32(arg1.length + 8)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 8) + -(arg1.length + 8 % 32) + 328 len arg1.length + 8 % 32] = mem[ceil32(arg1.length) + -(arg1.length + 8 % 32) + floor32(arg1.length + 8) + 320 len arg1.length + 8 % 32]
    mem[(2 * arg1.length) + ceil32(arg1.length) + 304] = 0
    stor[mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 8) + 296 len arg1.length + -floor32(arg1.length + 8) + 40]][mem[ceil32(arg1.length) + 288 len floor32(arg1.length + 8)]][address(arg2)] = 0
    emit RoleRemoved(Array(len=arg1.length + 8, data=Mask(8 * arg1.length + 8, -(8 * arg1.length + 8) + 256, mem[ceil32(arg1.length) + 288 len 7], '-', call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 296 len arg1.length % 32], Mask(8 * floor32(arg1.length + 39) + -arg1.length - 8, -(8 * floor32(arg1.length + 39) + -arg1.length - 8) + 256, 64) >> -(8 * floor32(arg1.length + 39) + -arg1.length - 8) + 256) << (8 * arg1.length + 8) - 256), address(arg2));
}

function sub_3f565f52(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 7
    mem[ceil32(arg1.length) + 160] = 'manager'
    mem[ceil32(arg1.length) + 224 len 0] = None
    mem[ceil32(arg1.length) + 231] = '-'
    mem[ceil32(arg1.length) + 232 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 264 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 232 len floor32(arg1.length + 8)] = mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 8)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 8) + -(arg1.length + 8 % 32) + 264 len arg1.length + 8 % 32] = mem[ceil32(arg1.length) + -(arg1.length + 8 % 32) + floor32(arg1.length + 8) + 256 len arg1.length + 8 % 32]
    mem[(2 * arg1.length) + ceil32(arg1.length) + 240] = 0
    require stor[mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 8) + 232 len arg1.length + -floor32(arg1.length + 8) + 40]][mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 8)]][address(msg.sender)]
    mem[arg1.length + ceil32(arg1.length) + 264 len arg1.length] = arg1[all]
    mem[arg1.length + (2 * ceil32(arg1.length)) + 296 len arg2.length] = arg2[all]
    mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 328 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 360 len arg1.length % 32] = mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 296 len arg1.length % 32]
    mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 328] = '-'
    mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 329 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 361 len arg2.length % 32] = mem[arg1.length + (2 * ceil32(arg1.length)) + floor32(arg2.length) + -(arg2.length % 32) + 328 len arg2.length % 32]
    mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 329 len floor32(arg2.length + arg1.length + 1)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg1.length) + 328 len floor32(arg2.length + arg1.length + 1) - floor32(arg1.length)]
    mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg2.length + arg1.length + 1) + -(arg2.length + arg1.length + 1 % 32) + 361 len arg2.length + arg1.length + 1 % 32] = mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + -(arg2.length + arg1.length + 1 % 32) + floor32(arg2.length + arg1.length + 1) + 360 len arg2.length + arg1.length + 1 % 32]
    mem[(2 * arg2.length) + (4 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 330] = 0
    stor[sha3(mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 329 len arg2.length + arg1.length + 33])][address(arg3)] = 1
    mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 361] = arg3
    mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 329] = 64
    mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 393] = arg2.length + arg1.length + 1
    mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 425 len floor32(arg2.length + arg1.length + 32)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg1.length) + 328 len floor32(arg2.length + arg1.length + 32) - floor32(arg1.length)]
    if not arg2.length + arg1.length + 1 % 32:
        emit RoleAdded(string arg1, address arg2):
                       64,
                       address(arg3),
                       mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 393 len arg2.length + arg1.length + 33],
    else:
        mem[floor32(arg2.length + arg1.length + 1) + arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 425] = mem[floor32(arg2.length + arg1.length + 1) + arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + -(arg2.length + arg1.length + 1 % 32) + 457 len arg2.length + arg1.length + 1 % 32]
        emit RoleAdded(Array(len=arg2.length + arg1.length + 1, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg1.length) + 328 len floor32(arg2.length + arg1.length + 32) - floor32(arg1.length)], mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg2.length + arg1.length + 32) + 425 len floor32(arg2.length + arg1.length + 1) + -floor32(arg2.length + arg1.length + 32) + 32]), address(arg3));
}

function sub_5d657b83(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 7
    mem[ceil32(arg1.length) + 160] = 'manager'
    mem[ceil32(arg1.length) + 224 len 0] = None
    mem[ceil32(arg1.length) + 231] = '-'
    mem[ceil32(arg1.length) + 232 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 264 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 232 len floor32(arg1.length + 8)] = mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 8)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 8) + -(arg1.length + 8 % 32) + 264 len arg1.length + 8 % 32] = mem[ceil32(arg1.length) + -(arg1.length + 8 % 32) + floor32(arg1.length + 8) + 256 len arg1.length + 8 % 32]
    mem[(2 * arg1.length) + ceil32(arg1.length) + 240] = 0
    require stor[mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 8) + 232 len arg1.length + -floor32(arg1.length + 8) + 40]][mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 8)]][address(msg.sender)]
    mem[arg1.length + ceil32(arg1.length) + 264 len arg1.length] = arg1[all]
    mem[arg1.length + (2 * ceil32(arg1.length)) + 296 len arg2.length] = arg2[all]
    mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 328 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 360 len arg1.length % 32] = mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 296 len arg1.length % 32]
    mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 328] = '-'
    mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 329 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 361 len arg2.length % 32] = mem[arg1.length + (2 * ceil32(arg1.length)) + floor32(arg2.length) + -(arg2.length % 32) + 328 len arg2.length % 32]
    mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 329 len floor32(arg2.length + arg1.length + 1)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg1.length) + 328 len floor32(arg2.length + arg1.length + 1) - floor32(arg1.length)]
    mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg2.length + arg1.length + 1) + -(arg2.length + arg1.length + 1 % 32) + 361 len arg2.length + arg1.length + 1 % 32] = mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + -(arg2.length + arg1.length + 1 % 32) + floor32(arg2.length + arg1.length + 1) + 360 len arg2.length + arg1.length + 1 % 32]
    mem[(2 * arg2.length) + (4 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 330] = 0
    stor[sha3(mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 329 len arg2.length + arg1.length + 33])][address(arg3)] = 0
    mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 361] = arg3
    mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 329] = 64
    mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 393] = arg2.length + arg1.length + 1
    mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 425 len floor32(arg2.length + arg1.length + 32)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg1.length) + 328 len floor32(arg2.length + arg1.length + 32) - floor32(arg1.length)]
    if not arg2.length + arg1.length + 1 % 32:
        emit RoleRemoved(string arg1, address arg2):
                         64,
                         address(arg3),
                         mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 393 len arg2.length + arg1.length + 33],
    else:
        mem[floor32(arg2.length + arg1.length + 1) + arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 425] = mem[floor32(arg2.length + arg1.length + 1) + arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + -(arg2.length + arg1.length + 1 % 32) + 457 len arg2.length + arg1.length + 1 % 32]
        emit RoleRemoved(Array(len=arg2.length + arg1.length + 1, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg1.length) + 328 len floor32(arg2.length + arg1.length + 32) - floor32(arg1.length)], mem[arg2.length + (2 * arg1.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg2.length + arg1.length + 32) + 425 len floor32(arg2.length + arg1.length + 1) + -floor32(arg2.length + arg1.length + 32) + 32]), address(arg3));
}



}
