contract main {


// =======================  Init code  ======================


uint8 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[43 len 306]
}



// =====================  Runtime code  =====================


uint8 stor0;

function forked() {
    return bool(stor0)
}

function _fallback() payable {
    revert 
}

function update() {
    if block.number >= 2463000:
        if block.number <= 2464200:
            stor0 = 1
            emit 0x1737cae4: bool(stor0)
}



}
