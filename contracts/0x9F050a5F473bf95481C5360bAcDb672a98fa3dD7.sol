contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    return code.data[103 len 1910]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
mapping of uint8 stor2;
mapping of struct stor3;
mapping of struct sub_1b411c9f;

function sub_1b411c9f(?) {
    return sub_1b411c9f[arg1].field_256, 
           sub_1b411c9f[arg1].field_512,
           sub_1b411c9f[arg1].field_768,
           sub_1b411c9f[arg1].field_1024,
           sub_1b411c9f[arg1].field_1280,
           sub_1b411c9f[arg1].field_1536,
           sub_1b411c9f[arg1].field_1792
}

function _fallback() payable {
    revert
}

function sub_0fe4c2a6(?) {
    require msg.sender == stor0
    stor2[address(arg1)] = 0
}

function sub_2cf58ac2(?) {
    require msg.sender == stor0
    stor2[address(arg1)] = 1
}

function sub_094798f1(?) {
    idx = stor1
    while idx > 0:
        mem[0] = idx
        mem[32] = 3
        if stor3[idx].field_256 != arg1:
            idx = idx - 1
            continue 
        return stor3[idx].field_256
    return 0
}

function sub_c4c74c05(?) {
    if stor0 != msg.sender:
        require stor2[address(msg.sender)]
    stor1++
    stor3[stor1].field_0 = stor1
    stor3[stor1].field_256 = arg1
    stor3[stor1].field_512 = arg2
    stor3[stor1].field_768 = arg3
    stor3[stor1].field_1024 = arg4
    stor3[stor1].field_1280 = arg5
    stor3[stor1].field_1536 = arg6
    stor3[stor1].field_1792 = arg7
    sub_1b411c9f[arg1].field_0 = stor1
    sub_1b411c9f[arg1].field_256 = arg1
    sub_1b411c9f[arg1].field_512 = arg2
    sub_1b411c9f[arg1].field_768 = arg3
    sub_1b411c9f[arg1].field_1024 = arg4
    sub_1b411c9f[arg1].field_1280 = arg5
    sub_1b411c9f[arg1].field_1536 = arg6
    sub_1b411c9f[arg1].field_1792 = arg7
}



}
