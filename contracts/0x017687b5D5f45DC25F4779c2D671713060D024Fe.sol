contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor2 = 0xf8e386eda857484f5a12e4b5daa9984e06e73705
    require not msg.value
    stor1 = block.timestamp + (5760 * 24 * 3600)
    stor0[0xe8c67375d802c9ae9583df38492ff3be49e8ca89] = 100000
    stor0[0x3dfb8a970e8d11b4002b2bc98d5a09b09da3482c] = 100000
    stor0[0xc865a2220960585a0d365e8d0d7897d4e3547ae6] = 10000
    stor0[0xdc77d48f290acac0e831c835714ae45e65ac3d8] = 150000
    stor0[0x9628db0f162665c34bfc0655d55c6b637552b9ec] = 50000
    stor0[0x89b7c9c2d529284f9e942389d0894eeadf34f037] = 150000
    stor0[0xee4918fbd8cd49a46b66488c523c3c24d9426270] = 100000
    stor0[0xc8a1dab586dee8a30cb88c87b8a3614e0a391fc5] = 100000
    stor0[0xed1374a831744af48174a890bba5ac333e76717] = 50000
    stor0[0x293a0369d58af2433c3a435a6b5343c5455c4ed4] = 100000
    stor0[0xf190f0193b694d9d2bb865a66f0c17cbd8280c71] = 50000
    stor0[0xb0d9693eec83452bd54fa5e0318850cc1b1a4a19] = 150000
    stor0[0x6f43006776e2df2bbcbc24055275c638dcde5b64] = 100000
    stor0[0xe21b56a62ff177331c38a359ae0b316fa432cc] = 6239891
    stor0[0xa6565606564282e2e23a86689d43448f6fc3236e] = 6239891
    stor0[0xfaa2480cbce8faa7fb706f0f16c9ab33873a1e38] = 3119945
    stor0[0xeae13552b4c19b1dcb645d40dc578ffabfd2e32c] = 3119945
    stor0[0xba74315f5f65de811c46840901fedf3d6dcdc748] = 50000
    stor0[0x11349f715cf59f75f0a00185e7b1c36f55c3ab] = 8099842
    return code.data[1806 len 883]
}



// =====================  Runtime code  =====================


const exponent = 10^18


mapping of uint256 allocations;
uint256 unlockDate;
address INDAddress;

function IND() {
    return INDAddress
}

function allocations(address arg1) {
    return allocations[arg1]
}

function unlockDate() {
    return unlockDate
}

function _fallback() payable {
    revert
}

function unlock() {
    require block.timestamp > unlockDate
    allocations[address(msg.sender)] = 0
    require ext_code.size(INDAddress)
    call INDAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * allocations[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
}



}
