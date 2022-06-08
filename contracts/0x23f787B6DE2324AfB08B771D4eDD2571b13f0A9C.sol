contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 feeRate;
mapping of struct sub_33a43607;
mapping of struct sub_e470e9f5;

function sub_33a43607(?) {
    require calldata.size - 4 >= 32
    return sub_33a43607[arg1].field_0, 
           sub_33a43607[arg1].field_256,
           sub_33a43607[arg1].field_512,
           sub_33a43607[arg1].field_768,
           sub_33a43607[arg1].field_1024,
           bool(sub_33a43607[arg1].field_1280),
           bool(sub_33a43607[arg1].field_1288)
}

function owner() {
    return owner
}

function feeRate() {
    return feeRate
}

function sub_e470e9f5(?) {
    require calldata.size - 4 >= 32
    return sub_e470e9f5[arg1].field_0, sub_e470e9f5[arg1].field_256, bool(sub_e470e9f5[arg1].field_416)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', mem[164]
    owner = arg1
}

function sub_6520d2e2(?) {
    require calldata.size - 4 >= 32
    sub_e470e9f5[arg1].field_0 = arg1
    sub_e470e9f5[arg1].field_256 = msg.sender
    sub_e470e9f5[arg1].field_416 = 1
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', mem[164]
    if arg1 < 1:
        revert with 0, '', mem[164]
    if arg1 >= 100:
        revert with 0, '', mem[164]
    feeRate = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, '', mem[164]
    call owner with:
       value stor1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 0
}

function sub_b3d05678(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '', mem[164]
    if not sub_33a43607[arg1].field_1288:
        revert with 0, '', mem[164]
    if sub_33a43607[arg1].field_1280:
        revert with 0, '', mem[164]
    if arg2 != sub_33a43607[arg1].field_256:
        if arg2 != sub_33a43607[arg1].field_512:
            revert with 0, '', mem[164]
    call arg2 with:
       value sub_33a43607[arg1].field_768 - sub_33a43607[arg1].field_1024 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_33a43607[arg1].field_1280 = 1
    if stor1 + sub_33a43607[arg1].field_1024 <= stor1:
        revert with 0, '', mem[164]
    stor1 += sub_33a43607[arg1].field_1024
}

function sub_fa8588fd(?) payable {
    require calldata.size - 4 >= 96
    if msg.sender == arg2:
        revert with 0, '', mem[164]
    if arg3 < 10^16:
        revert with 0, '', mem[164]
    if msg.value < arg3:
        revert with 0, '', mem[164]
    if sub_33a43607[arg1].field_1288:
        call sub_33a43607[arg1].field_256 with:
           value sub_33a43607[arg1].field_768 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    sub_33a43607[arg1].field_0 = arg1
    sub_33a43607[arg1].field_256 = msg.sender
    sub_33a43607[arg1].field_512 = arg2
    sub_33a43607[arg1].field_768 = msg.value
    sub_33a43607[arg1].field_1024 = msg.value * feeRate / 1000
    sub_33a43607[arg1].field_1280 = 0
    sub_33a43607[arg1].field_1288 = 1
    return arg1
}



}
