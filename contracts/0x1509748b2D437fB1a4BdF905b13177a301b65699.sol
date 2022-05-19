contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;

function verify(address arg1) {
    return bool(stor1[address(arg1)])
}

function AuthorizedUser(address arg1) {
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function provenAddress(address arg1, bool arg2) {
    require stor0[address(msg.sender)]
    stor1[address(arg1)] = uint8(arg2)
    emit proven(address(arg1), arg2);
}

function setAuthorizedUser(address arg1, bool arg2) {
    require stor0[address(msg.sender)]
    stor0[address(arg1)] = uint8(arg2)
    emit AuthorizedUserChanged(arg2, arg1);
}

function provenAddresseList(address[] arg1, bool arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor0[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require stor0[address(msg.sender)]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[address(mem[(32 * idx) + 128])] = uint8(arg2)
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 160] = arg2
        emit proven(mem[(32 * arg1.length) + 128], arg2);
        idx = idx + 1
        continue 
}



}
