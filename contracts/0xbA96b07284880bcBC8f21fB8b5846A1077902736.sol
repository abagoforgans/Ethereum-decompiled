contract main {


// =======================  Init code  ======================


function _fallback() {
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 0x14fbca95be7e99c15cc2996c6c9d841e54b79425, -1
    require ext_call.success
    return code.data[307 len 3746]
}



// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sendEther(address arg1, uint256 arg2) {
    require msg.sender == 0xe1763ab7240c14983c692b4b4b6c3000fb5aba15
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == 0xe1763ab7240c14983c692b4b4b6c3000fb5aba15
    require ext_code.size(arg1)
    call arg1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function sendToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == 0xe1763ab7240c14983c692b4b4b6c3000fb5aba15
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function buy(uint256 arg1, uint256 arg2) {
    require msg.sender == 0xe1763ab7240c14983c692b4b4b6c3000fb5aba15
    require ext_code.size(0x14fbca95be7e99c15cc2996c6c9d841e54b79425)
    call 0x14fbca95be7e99c15cc2996c6c9d841e54b79425.0xd6febde8 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == 0xe1763ab7240c14983c692b4b4b6c3000fb5aba15
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function withdrawAll(address arg1) {
    require msg.sender == 0xe1763ab7240c14983c692b4b4b6c3000fb5aba15
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
}

function sub_a916ad44(?) {
    require msg.sender == 0xe1763ab7240c14983c692b4b4b6c3000fb5aba15
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(0x14fbca95be7e99c15cc2996c6c9d841e54b79425)
    call 0x14fbca95be7e99c15cc2996c6c9d841e54b79425.getBestOffer(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359
    require ext_call.success
    if ext_call.return_data[0] > 0:
        emit 0x639f17b7: 10, ext_call.return_data[0]
        require ext_code.size(0x14fbca95be7e99c15cc2996c6c9d841e54b79425)
        call 0x14fbca95be7e99c15cc2996c6c9d841e54b79425.getOffer(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        emit 0x734a8a5e: ext_call.return_data[0], address(ext_call.return_data[32]), ext_call.return_data[64], address(ext_call.return_data[96])
        require ext_call.return_data[0]
        emit 0x639f17b7: 11, ext_call.return_data[64] / ext_call.return_data[0]
        if ext_call.return_data[64] / ext_call.return_data[0] > arg1:
            emit 0x639f17b7: 12, ext_call.return_data[0]
        else:
            if ext_call.return_data[0] > ext_call.return_data[64]:
                emit 0x639f17b7: 13, ext_call.return_data[0]
                require ext_code.size(0x14fbca95be7e99c15cc2996c6c9d841e54b79425)
                call 0x14fbca95be7e99c15cc2996c6c9d841e54b79425.0xd6febde8 with:
                     gas gas_remaining - 710 wei
                    args ext_call.return_data[0], ext_call.return_data[0]
                require ext_call.success
                emit 0x639f17b7: 14, ext_call.return_data[0]
            else:
                require ext_call.return_data[64]
                emit 0x639f17b7: 13, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
                require ext_code.size(0x14fbca95be7e99c15cc2996c6c9d841e54b79425)
                call 0x14fbca95be7e99c15cc2996c6c9d841e54b79425.0xd6febde8 with:
                     gas gas_remaining - 710 wei
                    args ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
                require ext_call.success
                emit 0x639f17b7: 14, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
}



}
