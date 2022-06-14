contract main {




// =====================  Runtime code  =====================


address sub_6621ebfbAddress;
address sub_aad3e5ccAddress;
uint32 stor2;
address wethAddress;
uint32 stor3;
address daiAddress;
uint32 stor4;
address mkrAddress;
address owner;
mapping of uint256 claims;
uint256 sub_3c22d7d5;
uint256 sub_6d2b5fd5;

function sub_3c22d7d5(?) {
    return sub_3c22d7d5
}

function weth() {
    return address(wethAddress)
}

function sub_6621ebfb(?) {
    return sub_6621ebfbAddress
}

function sub_6d2b5fd5(?) {
    return sub_6d2b5fd5
}

function mkr() {
    return address(mkrAddress)
}

function owner() {
    return owner
}

function claims(uint256 arg1) {
    require calldata.size - 4 >= 32
    return claims[arg1]
}

function sub_aad3e5cc(?) {
    return sub_aad3e5ccAddress
}

function dai() {
    return address(daiAddress)
}

function _fallback() payable {
    revert
}

function canSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(daiAddress))
    staticcall address(daiAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= arg1
}

function depositDai(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(address(daiAddress))
    call address(daiAddress).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function canClaim() {
    if sub_3c22d7d5 == sub_6d2b5fd5:
        return 0
    require ext_code.size(sub_6621ebfbAddress)
    staticcall sub_6621ebfbAddress.closingPrices(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(mkrAddress), address(daiAddress), claims[stor7]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return (0 < ext_call.return_data[32])
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function depositEther() payable {
    require msg.sender == owner
    require ext_code.size(address(wethAddress))
    call address(wethAddress).deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_aad3e5ccAddress)
    call sub_aad3e5ccAddress.sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor2), msg.value, address(daiAddress), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a99e7d50(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(daiAddress))
    staticcall address(daiAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        return ext_call.return_data[0] >= arg1
    if sub_3c22d7d5 == sub_6d2b5fd5:
        return 0
    require ext_code.size(sub_6621ebfbAddress)
    staticcall sub_6621ebfbAddress.closingPrices(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(mkrAddress), address(daiAddress), claims[stor7]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return (0 < ext_call.return_data[32])
}

function sub_dd53d657(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    mem[96 len arg2.length] = arg2[all]
    call arg1 with:
       value msg.value wei
         gas gas_remaining wei
        args arg2[all]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[96] = bool(ext_call.success)
    mem[128] = 64
    mem[160] = bool(ext_call.success)
    mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
    if not bool(ext_call.success) % 32:
        return memory
          from 96
           len bool(ext_call.success) + 96
    mem[floor32(bool(ext_call.success)) + 192] = Mask(-(8 * -(bool(ext_call.success) % 32) + 32) + 256, 0, mem[floor32(bool(ext_call.success)) + 192])
    return memory
      from 96
       len floor32(bool(ext_call.success)) + 128
}

function sub_c9ee7e02(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(address(daiAddress))
    staticcall address(daiAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        require sub_3c22d7d5 != sub_6d2b5fd5
        require ext_code.size(sub_6621ebfbAddress)
        staticcall sub_6621ebfbAddress.closingPrices(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(mkrAddress), address(daiAddress), claims[stor7]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require 0 < ext_call.return_data[32]
    require ext_code.size(address(daiAddress))
    staticcall address(daiAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        require ext_code.size(address(daiAddress))
        staticcall address(daiAddress).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg1
        require ext_code.size(sub_aad3e5ccAddress)
        call sub_aad3e5ccAddress.sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(stor3), arg1, address(mkrAddress), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6621ebfbAddress)
        call sub_6621ebfbAddress.depositAndSell(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(mkrAddress), address(daiAddress), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        claims[stor8] = ext_call.return_data[32]
        sub_6d2b5fd5++
    if sub_3c22d7d5 != sub_6d2b5fd5:
        require ext_code.size(sub_6621ebfbAddress)
        staticcall sub_6621ebfbAddress.closingPrices(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(mkrAddress), address(daiAddress), claims[stor7]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if 0 < ext_call.return_data[32]:
            require sub_3c22d7d5 != sub_6d2b5fd5
            require ext_code.size(sub_6621ebfbAddress)
            staticcall sub_6621ebfbAddress.closingPrices(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(mkrAddress), address(daiAddress), claims[stor7]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 0 < ext_call.return_data[32]
            require ext_code.size(sub_6621ebfbAddress)
            call sub_6621ebfbAddress.sellerBalances(address arg1, address arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args 0, uint32(stor4), address(daiAddress), claims[stor7], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(sub_6621ebfbAddress)
                call sub_6621ebfbAddress.claimSellerFunds(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(stor4), address(daiAddress), this.address, claims[stor7]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0] > 0:
                    require ext_code.size(sub_6621ebfbAddress)
                    call sub_6621ebfbAddress.withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(daiAddress), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            sub_3c22d7d5++
}



}
