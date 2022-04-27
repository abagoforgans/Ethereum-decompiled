contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 0
    stor3 = 14
    stor0 = msg.sender
    return code.data[93 len 1825]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_cd543ef0(?) {
    return (stor1.length - stor2)
}

function sub_d5c3bffd(?) {
    require msg.sender == owner
    stor3 = arg1
}

function changeContract(address arg1) {
    require msg.sender == owner
    stor4 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3d27388f(?) {
    require msg.sender == stor4
    idx = stor2
    while idx < stor2 + arg1:
        if stor1.length <= idx:
            stor2 = idx
        require idx < stor1.length
        mem[0] = 1
        stor1[idx] = 0
        idx = idx + 1
        continue 
    stor2 += arg1
}

function sub_1cc50da9(?) {
    idx = 0
    while idx < arg1:
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            s = sha3(1) + stor1.length + 1
            while sha3(1) + stor1.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 1
        stor1[stor1.length] = 1
        idx = idx + 1
        continue 
}

function sub_481dc719(?) {
    require msg.sender == stor4
    s = 0
    idx = 1
    while idx <= arg1:
        s = stor2
        while s < stor2 + stor3:
            if stor1.length <= s:
                stor2 = s
            require s < stor1.length
            mem[0] = 1
            stor1[s] = 0
            s = s + 1
            continue 
        stor2 += stor3
        s = stor2 + stor3
        idx = idx + 1
        continue 
}



}
