contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor2; offset 152
address stor2;

function _fallback() payable {
    Mask(152, 0, stor2.field_0) = 0xa97e3ca4e7c010bd001a3485b13128ba33c944
    uint8(stor2.field_152) = 0
    require not msg.value
    stor0 = block.timestamp
    return code.data[124 len 1372]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of struct stor1;
address stor2;

function finish() {
    if 0xcb8328c2027da8510d665c158586f97106077b8 != msg.sender:
    if eth.balance(this.address) < 4 * 10^17:
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        mem[96] = stor1[idx].field_0
        mem[128] = stor1[idx].field_256
        emit payout(stor1[idx].field_0, stor1[idx].field_256);
        idx = idx + 1
        continue 
    call stor2 with:
       value 4 * 10^17 wei
         gas 0 wei
    require ext_call.success
    selfdestruct(0xcb8328c2027da8510d665c158586f97106077b8)
}

function _fallback() payable {
    stor1.length++
    if block.timestamp < stor0 + (24 * 3600):
        if not stor1.length <= stor1.length + 1:
            idx = 2 * stor1.length + 1
            while 2 * stor1.length > idx:
                stor1[idx].field_0 = 0
                stor1[idx].field_256 = 0
                idx = idx + 2
                continue 
        stor1[stor1.length].field_0 = msg.sender
        stor1[stor1.length].field_256 = msg.value + (msg.value / 5)
    else:
        if block.timestamp >= stor0 + (48 * 24 * 3600):
            if not stor1.length <= stor1.length + 1:
                idx = 2 * stor1.length + 1
                while 2 * stor1.length > idx:
                    stor1[idx].field_0 = 0
                    stor1[idx].field_256 = 0
                    idx = idx + 2
                    continue 
            stor1[stor1.length].field_0 = msg.sender
            stor1[stor1.length].field_256 = msg.value + (msg.value / 20)
        else:
            if not stor1.length <= stor1.length + 1:
                idx = 2 * stor1.length + 1
                while 2 * stor1.length > idx:
                    stor1[idx].field_0 = 0
                    stor1[idx].field_256 = 0
                    idx = idx + 2
                    continue 
            stor1[stor1.length].field_0 = msg.sender
            stor1[stor1.length].field_256 = msg.value + (msg.value / 10)
}



}
