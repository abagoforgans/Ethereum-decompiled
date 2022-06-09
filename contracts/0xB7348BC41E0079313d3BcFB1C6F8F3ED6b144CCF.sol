contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
uint256 stor2;
uint256 feeRate;
mapping of struct sub_33a43607;

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

function operator() {
    return operatorAddress
}

function owner() {
    return owner
}

function feeRate() {
    return feeRate
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

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', mem[164]
    if msg.sender == arg1:
        revert with 0, '', mem[164]
    operatorAddress = arg1
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
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
       value stor2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2 = 0
}

function sub_b3d05678(?) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
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
    if stor2 + sub_33a43607[arg1].field_1024 <= stor2:
        revert with 0, '', mem[164]
    stor2 += sub_33a43607[arg1].field_1024
}

function sub_fa8588fd(?) payable {
    require calldata.size - 4 >= 96
    if msg.sender == arg2:
        revert with 0, '', mem[164]
    if not sub_33a43607[arg1].field_1288:
        if arg3 < 10^16:
            revert with 0, '', mem[164]
        if msg.value < arg3:
            revert with 0, '', mem[164]
    else:
        if sub_33a43607[arg1].field_1280:
            revert with 0, '', mem[164]
        if arg2 != sub_33a43607[arg1].field_512:
            revert with 0, '', mem[164]
        if arg3 < sub_33a43607[arg1].field_768:
            revert with 0, '', mem[164]
        if msg.value < arg3:
            revert with 0, '', mem[164]
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
