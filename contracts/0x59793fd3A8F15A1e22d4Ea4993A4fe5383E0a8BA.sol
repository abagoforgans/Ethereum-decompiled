contract main {




// =====================  Runtime code  =====================


const getAddressWETH = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const sub_269df589(?) = ext_call.return_data[0]

const sub_4f985c3f(?) = ext_call.return_data[12 len 20]

const getSaiTubAddress = 0x448a5065aebb8e423f0896e6c5d525c040f59af3


function _fallback() payable {
    revert
}

function withdrawWETH() {
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3e4e461b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
        staticcall 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x8000000000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != -1:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
}



}
