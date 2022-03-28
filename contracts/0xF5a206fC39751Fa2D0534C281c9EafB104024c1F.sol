contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor4;

function _fallback() {
    stor0 = code.data[2756 len 20]
    stor1 = code.data[2788 len 20]
    stor2 = code.data[2820 len 20]
    stor4 = 0
    return code.data[237 len 2507]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
mapping of struct txs;
uint256 index;

function owners(uint256 arg1) {
    require arg1 < 3
    return stor[arg1]
}

function index() {
    return index
}

function txs(uint256 arg1) {
    mem[320] = uint256(txs[arg1][1].field_0)
    idx = 320
    s = 0
    while txs[arg1][1].length + 320 > idx + 32:
        mem[idx + 32] = uint256(txs[arg1][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return txs[arg1].field_0, 
           Array(len=txs[arg1][1].length, data=mem[320 len txs[arg1][1].length + (floor32(txs[arg1][1].length - 1) + -txs[arg1][1].length + 32 % 32)]),
           uint8(txs[arg1].field_512),
           bool(uint8(txs[arg1].field_520)),
           bool(uint8(txs[arg1].field_528)),
           bool(uint8(txs[arg1].field_536))
}

function _fallback() {
    revert 
}

function sub_57b055bc(?) {
    require arg1 <= index
    require 1 == uint8(txs[arg1].field_512)
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            require msg.sender == stor2
    uint8(txs[arg1].field_512) = 2
    emit 0x56ca4ed6: Array(len=8, data='cancelTx'), arg1
}

function sub_bb7d6dee(?) {
    index++
    txs[stor4 + 1].field_0 = arg1
    uint256(txs[stor4][1][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint8(txs[stor4].field_512) = 1
    if msg.sender == stor0:
        uint8(txs[stor4].field_520) = 1
    else:
        if msg.sender == stor1:
            uint8(txs[stor4].field_528) = 1
        else:
            require msg.sender == stor2
            uint8(txs[stor4].field_536) = 1
    emit 0x56ca4ed6: Array(len=5, data='addTx'), index
}

function sub_94ee0b6a(?) {
    require arg1 <= index
    require 1 == uint8(txs[arg1].field_512)
    if msg.sender == stor0:
        uint8(txs[arg1].field_520) = uint8(not uint8(txs[arg1].field_520))
    else:
        if msg.sender == stor1:
            uint8(txs[arg1].field_528) = uint8(not uint8(txs[arg1].field_528))
        else:
            require msg.sender == stor2
            uint8(txs[arg1].field_536) = uint8(not uint8(txs[arg1].field_536))
    emit 0x56ca4ed6: Array(len=7, data='grantTx'), arg1
}

function sub_8bebea9a(?) {
    require arg1 <= index
    require 1 == uint8(txs[arg1].field_512)
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            require msg.sender == stor2
    if not uint8(txs[arg1].field_520):
        if not uint8(txs[arg1].field_520):
            require uint8(txs[arg1].field_528)
            require uint8(txs[arg1].field_536)
        else:
            if not uint8(txs[arg1].field_536):
                require uint8(txs[arg1].field_528)
                require uint8(txs[arg1].field_536)
    else:
        if not uint8(txs[arg1].field_528):
            if not uint8(txs[arg1].field_520):
                require uint8(txs[arg1].field_528)
                require uint8(txs[arg1].field_536)
            else:
                if not uint8(txs[arg1].field_536):
                    require uint8(txs[arg1].field_528)
                    require uint8(txs[arg1].field_536)
    uint8(txs[arg1].field_512) = 3
    mem[96] = uint256(txs[arg1][1].field_0)
    idx = 96
    s = 0
    while txs[arg1][1].length + 96 > idx + 32:
        mem[idx + 32] = uint256(txs[arg1][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    call txs[arg1].field_0.mem[96 len 4] with:
         gas gas_remaining - 34050 wei
        args mem[100 len txs[arg1][1].length + (floor32(txs[arg1][1].length - 1) + -txs[arg1][1].length + 32 % 32) - 4]
    require ext_call.success
    emit 0x56ca4ed6: Array(len=6, data='sendTx'), arg1
}



}
