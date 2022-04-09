contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    require msg.value >= 10^16
    stor2 = msg.sender
    stor1 = code.data[1058 len 32]
    stor0 = code.data[1026 len 32]
    stor3 = code.data[1090 len 32]
    stor4 = code.data[1122 len 32]
    stor5 = code.data[1154 len 32]
    stor6 = block.timestamp
    call 0xc122ca236edf7b33fb73fbb459a08f7935e6c96b with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0x39267ec3f4e1610cd871d3545e01918f1dba7b84 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return code.data[443 len 583]
}



// =====================  Runtime code  =====================


uint256 hash;
uint256 name;
address owner;
uint256 sub_ed73907a;
uint256 size;
uint256 sub_c3d75375;
uint256 timestamp;

function name() {
    return name
}

function hash() {
    return hash
}

function owner() {
    return owner
}

function size() {
    return size
}

function timestamp() {
    return timestamp
}

function sub_c3d75375(?) {
    return sub_c3d75375
}

function sub_ed73907a(?) {
    return sub_ed73907a
}

function _fallback() payable {
    revert
}



}
