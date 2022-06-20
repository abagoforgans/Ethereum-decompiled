contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
address stor4;
address stor5;
uint8 stor2639;
uint8 stor959B;
uint8 stor9DF8;
uint8 storA0C9;
uint8 storA786;
uint8 storAE7F;
uint8 storCA5B;
uint8 storF6FD;
uint8 storFE05;

function _fallback() payable {
    stor2 = 0xcbc6a023eb975a1e2630223a7959988948e664f3
    stor3 = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
    stor4 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    stor5 = 0x818e6fecd516ecc3849daf6845e3ec868087b755
    stor0 = 0xd700a691a5f9253a285b03ec700f6336e5afadf3
    stor2639 = 1
    storA786 = 1
    stor959B = 1
    storF6FD = 1
    storCA5B = 1
    storA0C9 = 1
    storAE7F = 1
    stor9DF8 = 1
    storFE05 = 1
    return code.data[586 len 5306]
}



// =====================  Runtime code  =====================


#
#  - execute(bytes arg1)
#
const getBalance = eth.balance(this.address)


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
address stor5;

function owner() {
    return owner
}

function isAuthorized(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
  stop
}

function grantAccess(address arg1) {
    require owner == msg.sender
    stor1[address(arg1)] = 1
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_afdbc7b1(?) {
    require ext_code.size(arg3)
    call arg3.getEthToTokenInputPrice(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(arg4)
    call arg4.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args address(arg1), stor4, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args stor4, stor3, ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] >= arg2:
        if stor1[address(msg.sender)]:
            require ext_code.size(arg3)
            call arg3.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
               value arg2 wei
                 gas gas_remaining - 9710 wei
                args 1, 0x8000000000000000000000000000000000000000000000000000000000000000
            require ext_call.success
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(arg4), ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(arg4)
            call arg4.0xfc0c546a with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            mem[520 len 0] = None
            require ext_code.size(arg4)
            call arg4.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining - 710 wei
                args Array(len=5, data=mem[520 len 160]), ext_call.return_data[0], 1
            require ext_call.success
            require eth.balance(this.address) <= eth.balance(this.address)
}

function sub_e42a91ef(?) {
    require ext_code.size(arg3)
    call arg3.getEthToTokenInputPrice(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg4)
    call arg4.getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0], block.number
    require ext_call.success
    require 10^uint8(ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) >= arg2:
        if stor1[address(msg.sender)]:
            require ext_code.size(arg3)
            call arg3.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
               value arg2 wei
                 gas gas_remaining - 9710 wei
                args 1, 0x8000000000000000000000000000000000000000000000000000000000000000
            require ext_call.success
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args 0x818e6fecd516ecc3849daf6845e3ec868087b755, ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(stor5)
            call stor5.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                 gas gas_remaining - 710 wei
                args 0, 0, ext_call.return_data[28 len 4], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, 0xf814821b260f78fca6dc8ceb0064df14a1b803cc
            require ext_call.success
            require eth.balance(this.address) <= eth.balance(this.address)
}

function sub_ef3e9335(?) {
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg3)
    call arg3.getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 4008636142, address(arg1), arg2, block.number
    require ext_call.success
    require ext_code.size(arg4)
    call arg4.getTokenToEthInputPrice(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args (ext_call.return_data[0] * arg2 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18)
    require ext_call.success
    if ext_call.return_data[0] >= arg2:
        if stor1[address(msg.sender)]:
            require ext_code.size(stor5)
            call stor5.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
               value arg2 wei
                 gas gas_remaining - 9710 wei
                args 0, 0, uint32(arg2), address(arg1), address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, 0xf814821b260f78fca6dc8ceb0064df14a1b803cc
            require ext_call.success
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(arg4), ext_call.return_data[0] * arg2 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
            require ext_call.success
            require ext_code.size(arg4)
            call arg4.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0] * arg2 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18, 1, 0x8000000000000000000000000000000000000000000000000000000000000000
            require ext_call.success
            require eth.balance(this.address) <= eth.balance(this.address)
}

function sub_dea42ec2(?) {
    if stor1[address(msg.sender)]:
        require ext_code.size(stor2)
        call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args stor3, stor4, arg2
        require ext_call.success
        require ext_code.size(arg3)
        call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args stor4, address(arg1), ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(arg4)
        call arg4.getTokenToEthInputPrice(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] >= arg2:
            if stor1[address(msg.sender)]:
                require ext_code.size(arg3)
                call arg3.0xfc0c546a with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                mem[520 len 0] = None
                require ext_code.size(arg3)
                call arg3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value arg2 wei
                     gas gas_remaining - 9710 wei
                    args Array(len=5, data=mem[520 len 160]), arg2, 1
                require ext_call.success
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg4), ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(arg4)
                call arg4.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining - 710 wei
                    args ext_call.return_data[0], 1, 0x8000000000000000000000000000000000000000000000000000000000000000
                require ext_call.success
                require eth.balance(this.address) <= eth.balance(this.address)
}

function sub_bbeb8f84(?) {
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg3)
    call arg3.getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 4008636142, address(arg1), arg2, block.number
    require ext_call.success
    require ext_code.size(arg4)
    call arg4.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args address(arg1), stor4, ext_call.return_data[0] * arg2 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args stor4, stor3, ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] >= arg2:
        if stor1[address(msg.sender)]:
            require ext_code.size(stor5)
            call stor5.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
               value arg2 wei
                 gas gas_remaining - 9710 wei
                args 0, 0, uint32(arg2), address(arg1), address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, 0xf814821b260f78fca6dc8ceb0064df14a1b803cc
            require ext_call.success
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(arg4), ext_call.return_data[0] * arg2 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
            require ext_call.success
            require ext_code.size(arg4)
            call arg4.0xfc0c546a with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            mem[648 len 0] = None
            require ext_code.size(arg4)
            call arg4.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining - 710 wei
                args Array(len=5, data=mem[648 len 160]), ext_call.return_data[0] * arg2 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18, 1
            require ext_call.success
            require eth.balance(this.address) <= eth.balance(this.address)
}

function sub_233c6a9e(?) {
    require ext_code.size(stor2)
    call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args stor3, stor4, arg2
    require ext_call.success
    require ext_code.size(arg3)
    call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args stor4, address(arg1), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg4)
    call arg4.getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0], block.number
    require ext_call.success
    require 10^uint8(ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) >= arg2:
        if stor1[address(msg.sender)]:
            require ext_code.size(arg3)
            call arg3.0xfc0c546a with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            mem[552 len 0] = None
            require ext_code.size(arg3)
            call arg3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value arg2 wei
                 gas gas_remaining - 9710 wei
                args Array(len=5, data=mem[552 len 160]), arg2, 1
            require ext_call.success
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args 0x818e6fecd516ecc3849daf6845e3ec868087b755, ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(stor5)
            call stor5.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                 gas gas_remaining - 710 wei
                args address(arg1), ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0, 0x8000000000000000000000000000000000000000000000000000000000000000, 1, 0xf814821b260f78fca6dc8ceb0064df14a1b803cc
            require ext_call.success
            require eth.balance(this.address) <= eth.balance(this.address)
}



}
