contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    require code.data[753 len 20]
    stor0 = code.data[753 len 20]
    return code.data[161 len 580]
}



// =====================  Runtime code  =====================


address dutchAuctionAddress;

function dutchAuction() {
    return dutchAuctionAddress
}

function _fallback() payable {
    revert
}

function claimTokensFor(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xdf8de3e700000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_9)
        require ext_code.size(dutchAuctionAddress)
        call dutchAuctionAddress.0xdf8de3e7 with:
             gas gas_remaining - 50 wei
            args address(_9)
        require ext_call.success
        idx = idx + 1
        continue 
}



}
