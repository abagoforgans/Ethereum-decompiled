contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = code.data[1899 len 20]
    return code.data[110 len 1777]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
address addr;

function check(uint256 arg1) {
    return bool(stor0[arg1].field_0)
}

function getAddr() {
    return addr
}

function _fallback() payable {
    revert 
}

function create(uint256 arg1) {
    stor0[arg1].field_0 = 1
}

function update(uint256 arg1, uint256 arg2, uint256 arg3) {
    stor0[arg1].field_256 = arg2
    stor0[arg1].field_512 = arg3
}

function pair() {
    call addr with:
       funct Mask(32, 224, sha3('pair()')) >> 224
         gas gas_remaining - 25050 wei
}

function sub_f21a24b8(?) {
    if stor0[arg1].field_0:
        call addr with:
           funct Mask(32, 224, sha3('create(uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args arg1
}

function send2(uint256 arg1) {
    if stor0[arg1].field_0:
        call addr with:
           funct Mask(32, 224, sha3('update(uint256,uint256,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args arg1, stor0[arg1].field_256, stor0[arg1].field_512
}

function sub_8fc10e96(?) {
    if stor0[arg1].field_0:
        if stor0[arg1].field_256 == arg2:
            if stor0[arg1].field_512 == arg3:
                return 1
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
