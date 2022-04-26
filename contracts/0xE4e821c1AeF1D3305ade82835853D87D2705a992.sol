contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    require ext_code.size(0xb626a5facc4de1c813f5293ec3be31979f1d1c78)
    call 0xb626a5facc4de1c813f5293ec3be31979f1d1c78.getQuickBuyEtherToken() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor0 = ext_call.return_data[12 len 20] or Mask(96, 160, stor0)
    require not msg.value
    return code.data[203 len 3570]
}



// =====================  Runtime code  =====================


const bancorToken = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c

const bancorChanger = 0xb626a5facc4de1c813f5293ec3be31979f1d1c78


address stor0;
array of struct agreements;

function agreements(uint256 arg1) {
    require arg1 < agreements.length
    return agreements[arg1].field_0, 
           agreements[arg1].field_256,
           agreements[arg1].field_512,
           agreements[arg1].field_768,
           agreements[arg1].field_1024,
           agreements[arg1].field_1280
}

function _fallback() payable {
    revert
}

function addCollateral(uint256 arg1) payable {
    require arg1 < agreements.length
    require agreements[arg1].field_512 > 0
    require arg1 < agreements.length
    require agreements[arg1].field_256 == msg.sender
    require arg1 < agreements.length
    agreements[arg1].field_768 += msg.value
}

function isCollateralWithinMargin(uint256 arg1, uint256 arg2, uint32 arg3) {
    require ext_code.size(0xb626a5facc4de1c813f5293ec3be31979f1d1c78)
    call 0xb626a5facc4de1c813f5293ec3be31979f1d1c78.getPurchaseReturn(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor0, arg2
    require ext_call.success
    return (ext_call.return_data[0] > arg1 * uint32(arg3 + 100) / 100)
}

function offerPosition(uint256 arg1, uint32 arg2, uint256 arg3) {
    require ext_code.size(0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c)
    call 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    agreements.length++
    if not agreements.length <= agreements.length + 1:
        idx = (6 * agreements.length) + 6
        while 6 * agreements.length > idx:
            agreements[idx].field_0 = 0
            agreements[idx].field_256 = 0
            agreements[idx].field_512 = 0
            agreements[idx].field_768 = 0
            agreements[idx].field_1024 = 0
            agreements[idx].field_1280 = 0
            idx = idx + 6
            continue 
    agreements[agreements.length].field_0 = msg.sender
    agreements[agreements.length].field_256 = 0
    agreements[agreements.length].field_512 = 0
    agreements[agreements.length].field_512 = arg1
    agreements[agreements.length].field_768 = 0
    agreements[agreements.length].field_1024 = arg2
    agreements[agreements.length].field_1280 = arg3
}

function takePosition(uint256 arg1) payable {
    require arg1 < agreements.length
    require agreements[arg1].field_512 > 0
    require arg1 < agreements.length
    require not agreements[arg1].field_256
    require arg1 < agreements.length
    require ext_code.size(0xb626a5facc4de1c813f5293ec3be31979f1d1c78)
    call 0xb626a5facc4de1c813f5293ec3be31979f1d1c78.getSaleReturn(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor0, agreements[arg1].field_512
    require ext_call.success
    require arg1 < agreements.length
    require ext_code.size(0xb626a5facc4de1c813f5293ec3be31979f1d1c78)
    call 0xb626a5facc4de1c813f5293ec3be31979f1d1c78.getPurchaseReturn(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor0, ext_call.return_data[0] + msg.value
    require ext_call.success
    require ext_call.return_data[0] > agreements[arg1].field_512 * uint32(agreements[arg1].field_1024 + 100) / 100
    require ext_code.size(0xb626a5facc4de1c813f5293ec3be31979f1d1c78)
    call 0xb626a5facc4de1c813f5293ec3be31979f1d1c78.sell(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args stor0, agreements[arg1].field_512, 1
    require ext_call.success
    require ext_call.return_data[0] + msg.value == ext_call.return_data[0] + msg.value
    require ext_code.size(stor0)
    call stor0.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require arg1 < agreements.length
    agreements[arg1].field_256 = msg.sender
    agreements[arg1].field_768 = ext_call.return_data[0] + msg.value
}

function closePosition(uint256 arg1) {
    require arg1 < agreements.length
    require agreements[arg1].field_512 > 0
    require arg1 < agreements.length
    require arg1 < agreements.length
    if not agreements[arg1].field_256:
        require agreements[arg1].field_0 == msg.sender
        require arg1 < agreements.length
        require ext_code.size(0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c)
        call 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args agreements[arg1].field_0, agreements[arg1].field_512
        require ext_call.success
        require arg1 < agreements.length
        agreements[arg1].field_512 = 0
    else:
        require ext_code.size(0xb626a5facc4de1c813f5293ec3be31979f1d1c78)
        call 0xb626a5facc4de1c813f5293ec3be31979f1d1c78.getPurchaseReturn(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args stor0, agreements[arg1].field_768
        require ext_call.success
        if ext_call.return_data[0] <= agreements[arg1].field_512 * uint32(agreements[arg1].field_1024 + 100) / 100:
            require ext_code.size(0xb626a5facc4de1c813f5293ec3be31979f1d1c78)
            call 0xb626a5facc4de1c813f5293ec3be31979f1d1c78.quickBuy(uint256 rg1) with:
               value agreements[arg1].field_768 wei
                 gas gas_remaining - 9710 wei
                args 1
            require ext_call.success
            require arg1 < agreements.length
            require ext_code.size(0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c)
            if ext_call.return_data[0] < agreements[arg1].field_512:
                call 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args agreements[arg1].field_0, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
            else:
                call 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args agreements[arg1].field_0, agreements[arg1].field_512
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0xb626a5facc4de1c813f5293ec3be31979f1d1c78)
                call 0xb626a5facc4de1c813f5293ec3be31979f1d1c78.sell(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args stor0, ext_call.return_data[0] - agreements[arg1].field_512, 1
                require ext_call.success
                require arg1 < agreements.length
                require ext_code.size(stor0)
                call stor0.withdrawTo(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args agreements[arg1].field_256, ext_call.return_data[0]
                require ext_call.success
            require arg1 < agreements.length
            agreements[arg1].field_512 = 0
        else:
            require arg1 < agreements.length
            if block.timestamp > agreements[arg1].field_1280:
                require ext_code.size(0xb626a5facc4de1c813f5293ec3be31979f1d1c78)
                call 0xb626a5facc4de1c813f5293ec3be31979f1d1c78.quickBuy(uint256 rg1) with:
                   value agreements[arg1].field_768 wei
                     gas gas_remaining - 9710 wei
                    args 1
                require ext_call.success
                require arg1 < agreements.length
                require ext_code.size(0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c)
                if ext_call.return_data[0] < agreements[arg1].field_512:
                    call 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args agreements[arg1].field_0, ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                else:
                    call 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args agreements[arg1].field_0, agreements[arg1].field_512
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(0xb626a5facc4de1c813f5293ec3be31979f1d1c78)
                    call 0xb626a5facc4de1c813f5293ec3be31979f1d1c78.sell(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining - 710 wei
                        args stor0, ext_call.return_data[0] - agreements[arg1].field_512, 1
                    require ext_call.success
                    require arg1 < agreements.length
                    require ext_code.size(stor0)
                    call stor0.withdrawTo(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args agreements[arg1].field_256, ext_call.return_data[0]
                    require ext_call.success
                require arg1 < agreements.length
                agreements[arg1].field_512 = 0
}



}
