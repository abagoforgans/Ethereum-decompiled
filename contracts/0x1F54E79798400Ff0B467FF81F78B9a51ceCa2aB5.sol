contract main {




// =====================  Runtime code  =====================


#
#  - sub_bfa75982(?)
#
address owner;
address newOwner;
address stor2;
uint256 stor2;
address stor3;
array of uint256 stor4;
address sub_4a681a4cAddress;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 sub_2e0c20dc;
mapping of struct sub_0b3e0ebf;
uint8 contractPaused;

function sub_0b3e0ebf(?) {
    require calldata.size - 4 >= 32
    return sub_0b3e0ebf[arg1].field_0, sub_0b3e0ebf[arg1].field_256, sub_0b3e0ebf[arg1].field_512
}

function sub_2e0c20dc(?) {
    return sub_2e0c20dc
}

function sub_4a681a4c(?) {
    return sub_4a681a4cAddress
}

function sub_68806791(?) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function contractPaused() {
    return bool(contractPaused)
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function sub_d5ae16bf(?) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function sub_92c2c970(?) {
    if newOwner != msg.sender:
        return 0
    owner = newOwner
    return 1
}

function sub_8d5b5402(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    contractPaused = uint8(arg1)
}

function setClaimPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_2e0c20dc = arg1
}

function transferContractOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function withdrawEth() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
}

function stringToBytes32(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length:
        mem[ceil32(arg1.length) + 128] = mem[128]
    else:
        mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function __callback(bytes32 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not stor3:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg2.length) + 128] = 11
            bool(stor4.length) = 0
            stor4.length.field_1 = 11
            stor4.length.field_168 = 122651227630733402800285044
            idx = 0
            while stor4.length + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor3)
            call stor3.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(stor2):
                require ext_code.size(stor3)
                call stor3.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(address(stor2))
            staticcall address(stor2).cbAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
            require not stor8[stor11[arg1].field_512]
            require not stor9[stor11[arg1].field_0]
            if arg2.length:
                require mem[128] == sub_0b3e0ebf[arg1].field_512
            else:
                require 0 == sub_0b3e0ebf[arg1].field_512
            stor8[stor11[arg1].field_512] = 1
            stor9[stor11[arg1].field_0] = 1
            require ext_code.size(sub_4a681a4cAddress)
            if sub_0b3e0ebf[arg1].field_0 != sub_0b3e0ebf[arg1].field_256:
                call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_0b3e0ebf[arg1].field_0, sub_0b3e0ebf[arg1].field_256
            else:
                call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_0b3e0ebf[arg1].field_0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call owner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            emit 0x25fab912: arg1, Array(len=arg2.length, data=arg2[all])
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg2.length) + 128] = 12
                bool(stor4.length) = 0
                stor4.length.field_1 = 12
                stor4.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor3)
                call stor3.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != address(stor2):
                    require ext_code.size(stor3)
                    call stor3.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(address(stor2))
                staticcall address(stor2).cbAddress() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
                require not stor8[stor11[arg1].field_512]
                require not stor9[stor11[arg1].field_0]
                if arg2.length:
                    require mem[128] == sub_0b3e0ebf[arg1].field_512
                else:
                    require 0 == sub_0b3e0ebf[arg1].field_512
                stor8[stor11[arg1].field_512] = 1
                stor9[stor11[arg1].field_0] = 1
                require ext_code.size(sub_4a681a4cAddress)
                if sub_0b3e0ebf[arg1].field_0 != sub_0b3e0ebf[arg1].field_256:
                    call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args sub_0b3e0ebf[arg1].field_0, sub_0b3e0ebf[arg1].field_256
                else:
                    call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args sub_0b3e0ebf[arg1].field_0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                emit 0x25fab912: arg1, Array(len=arg2.length, data=arg2[all])
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg2.length) + 128] = 9
                    bool(stor4.length) = 0
                    stor4.length.field_1 = 9
                    stor4.length.field_184 = 1871509210665678430574
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor3)
                    call stor3.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != address(stor2):
                        require ext_code.size(stor3)
                        call stor3.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    require ext_code.size(address(stor2))
                    staticcall address(stor2).cbAddress() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.sender == ext_call.return_data[12 len 20]
                    require not stor8[stor11[arg1].field_512]
                    require not stor9[stor11[arg1].field_0]
                    if arg2.length:
                        require mem[128] == sub_0b3e0ebf[arg1].field_512
                    else:
                        require 0 == sub_0b3e0ebf[arg1].field_512
                    stor8[stor11[arg1].field_512] = 1
                    stor9[stor11[arg1].field_0] = 1
                    require ext_code.size(sub_4a681a4cAddress)
                    if sub_0b3e0ebf[arg1].field_0 != sub_0b3e0ebf[arg1].field_256:
                        call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args sub_0b3e0ebf[arg1].field_0, sub_0b3e0ebf[arg1].field_256
                    else:
                        call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args sub_0b3e0ebf[arg1].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    emit 0x25fab912: arg1, Array(len=arg2.length, data=arg2[all])
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) > 0:
                        stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg2.length) + 128] = 11
                        bool(stor4.length) = 0
                        stor4.length.field_1 = 11
                        stor4.length.field_168 = Mask(88, 0, 'eth_rinkeby')
                        idx = 0
                        while stor4.length + 31 / 32 > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        call stor3.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor2):
                            require ext_code.size(stor3)
                            call stor3.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        require ext_code.size(address(stor2))
                        staticcall address(stor2).cbAddress() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        require not stor8[stor11[arg1].field_512]
                        require not stor9[stor11[arg1].field_0]
                        if arg2.length:
                            require mem[128] == sub_0b3e0ebf[arg1].field_512
                        else:
                            require 0 == sub_0b3e0ebf[arg1].field_512
                        stor8[stor11[arg1].field_512] = 1
                        stor9[stor11[arg1].field_0] = 1
                        require ext_code.size(sub_4a681a4cAddress)
                        if sub_0b3e0ebf[arg1].field_0 != sub_0b3e0ebf[arg1].field_256:
                            call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                                 gas gas_remaining wei
                                args sub_0b3e0ebf[arg1].field_0, sub_0b3e0ebf[arg1].field_256
                        else:
                            call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                                 gas gas_remaining wei
                                args sub_0b3e0ebf[arg1].field_0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        emit 0x25fab912: arg1, Array(len=arg2.length, data=arg2[all])
                    else:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor3)
                        call stor3.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor2):
                            require ext_code.size(stor3)
                            call stor3.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        require ext_code.size(address(stor2))
                        staticcall address(stor2).cbAddress() with:
                                gas gas_remaining wei
                        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        require not stor8[stor11[arg1].field_512]
                        require not stor9[stor11[arg1].field_0]
                        if arg2.length:
                            require mem[128] == sub_0b3e0ebf[arg1].field_512
                        else:
                            require 0 == sub_0b3e0ebf[arg1].field_512
                        stor8[stor11[arg1].field_512] = 1
                        stor9[stor11[arg1].field_0] = 1
                        require ext_code.size(sub_4a681a4cAddress)
                        if sub_0b3e0ebf[arg1].field_0 != sub_0b3e0ebf[arg1].field_256:
                            call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                                 gas gas_remaining wei
                                args sub_0b3e0ebf[arg1].field_0, sub_0b3e0ebf[arg1].field_256
                        else:
                            call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                                 gas gas_remaining wei
                                args sub_0b3e0ebf[arg1].field_0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        mem[ceil32(arg2.length) + 128] = arg1
                        mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if not arg2.length % 32:
                            emit 0x25fab912: 0, Mask(224, 0, arg1), 64, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
                            emit 0x25fab912: 0, Mask(224, 0, arg1), 64, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    else:
        if ext_code.size(stor3):
            call stor3.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(stor2):
                require ext_code.size(stor3)
                call stor3.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(address(stor2))
            staticcall address(stor2).cbAddress() with:
                    gas gas_remaining wei
            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
            require not stor8[stor11[arg1].field_512]
            require not stor9[stor11[arg1].field_0]
            if arg2.length:
                require mem[128] == sub_0b3e0ebf[arg1].field_512
            else:
                require 0 == sub_0b3e0ebf[arg1].field_512
            stor8[stor11[arg1].field_512] = 1
            stor9[stor11[arg1].field_0] = 1
            require ext_code.size(sub_4a681a4cAddress)
            if sub_0b3e0ebf[arg1].field_0 != sub_0b3e0ebf[arg1].field_256:
                call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_0b3e0ebf[arg1].field_0, sub_0b3e0ebf[arg1].field_256
            else:
                call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_0b3e0ebf[arg1].field_0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call owner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            mem[ceil32(arg2.length) + 128] = arg1
            mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                emit 0x25fab912: 0, Mask(224, 0, arg1), 64, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
                emit 0x25fab912: 0, Mask(224, 0, arg1), 64, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + 128] = 11
                bool(stor4.length) = 0
                stor4.length.field_1 = 11
                stor4.length.field_168 = 122651227630733402800285044
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor3)
                call stor3.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != address(stor2):
                    require ext_code.size(stor3)
                    call stor3.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(address(stor2))
                staticcall address(stor2).cbAddress() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
                require not stor8[stor11[arg1].field_512]
                require not stor9[stor11[arg1].field_0]
                if arg2.length:
                    require mem[128] == sub_0b3e0ebf[arg1].field_512
                else:
                    require 0 == sub_0b3e0ebf[arg1].field_512
                stor8[stor11[arg1].field_512] = 1
                stor9[stor11[arg1].field_0] = 1
                require ext_code.size(sub_4a681a4cAddress)
                if sub_0b3e0ebf[arg1].field_0 != sub_0b3e0ebf[arg1].field_256:
                    call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args sub_0b3e0ebf[arg1].field_0, sub_0b3e0ebf[arg1].field_256
                else:
                    call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args sub_0b3e0ebf[arg1].field_0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                emit 0x25fab912: arg1, Array(len=arg2.length, data=arg2[all])
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + 128] = 12
                    bool(stor4.length) = 0
                    stor4.length.field_1 = 12
                    stor4.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor3)
                    call stor3.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != address(stor2):
                        require ext_code.size(stor3)
                        call stor3.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    require ext_code.size(address(stor2))
                    staticcall address(stor2).cbAddress() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.sender == ext_call.return_data[12 len 20]
                    require not stor8[stor11[arg1].field_512]
                    require not stor9[stor11[arg1].field_0]
                    if arg2.length:
                        require mem[128] == sub_0b3e0ebf[arg1].field_512
                    else:
                        require 0 == sub_0b3e0ebf[arg1].field_512
                    stor8[stor11[arg1].field_512] = 1
                    stor9[stor11[arg1].field_0] = 1
                    require ext_code.size(sub_4a681a4cAddress)
                    if sub_0b3e0ebf[arg1].field_0 != sub_0b3e0ebf[arg1].field_256:
                        call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args sub_0b3e0ebf[arg1].field_0, sub_0b3e0ebf[arg1].field_256
                    else:
                        call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args sub_0b3e0ebf[arg1].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    emit 0x25fab912: arg1, Array(len=arg2.length, data=arg2[all])
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + 128] = 9
                        bool(stor4.length) = 0
                        stor4.length.field_1 = 9
                        stor4.length.field_184 = 1871509210665678430574
                        idx = 0
                        while stor4.length + 31 / 32 > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        call stor3.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor2):
                            require ext_code.size(stor3)
                            call stor3.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        require ext_code.size(address(stor2))
                        staticcall address(stor2).cbAddress() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        require not stor8[stor11[arg1].field_512]
                        require not stor9[stor11[arg1].field_0]
                        if arg2.length:
                            require mem[128] == sub_0b3e0ebf[arg1].field_512
                        else:
                            require 0 == sub_0b3e0ebf[arg1].field_512
                        stor8[stor11[arg1].field_512] = 1
                        stor9[stor11[arg1].field_0] = 1
                        require ext_code.size(sub_4a681a4cAddress)
                        if sub_0b3e0ebf[arg1].field_0 != sub_0b3e0ebf[arg1].field_256:
                            call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                                 gas gas_remaining wei
                                args sub_0b3e0ebf[arg1].field_0, sub_0b3e0ebf[arg1].field_256
                        else:
                            call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                                 gas gas_remaining wei
                                args sub_0b3e0ebf[arg1].field_0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        emit 0x25fab912: arg1, Array(len=arg2.length, data=arg2[all])
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) > 0:
                            stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + 128] = 11
                            bool(stor4.length) = 0
                            stor4.length.field_1 = 11
                            stor4.length.field_168 = Mask(88, 0, 'eth_rinkeby')
                            idx = 0
                            while stor4.length + 31 / 32 > idx:
                                stor4[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            call stor3.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != address(stor2):
                                require ext_code.size(stor3)
                                call stor3.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                            require ext_code.size(address(stor2))
                            staticcall address(stor2).cbAddress() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.sender == ext_call.return_data[12 len 20]
                            require not stor8[stor11[arg1].field_512]
                            require not stor9[stor11[arg1].field_0]
                            if arg2.length:
                                require mem[128] == sub_0b3e0ebf[arg1].field_512
                            else:
                                require 0 == sub_0b3e0ebf[arg1].field_512
                            stor8[stor11[arg1].field_512] = 1
                            stor9[stor11[arg1].field_0] = 1
                            require ext_code.size(sub_4a681a4cAddress)
                            if sub_0b3e0ebf[arg1].field_0 != sub_0b3e0ebf[arg1].field_256:
                                call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args sub_0b3e0ebf[arg1].field_0, sub_0b3e0ebf[arg1].field_256
                            else:
                                call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args sub_0b3e0ebf[arg1].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            emit 0x25fab912: arg1, Array(len=arg2.length, data=arg2[all])
                        else:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor3)
                            call stor3.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != address(stor2):
                                require ext_code.size(stor3)
                                call stor3.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                            require ext_code.size(address(stor2))
                            staticcall address(stor2).cbAddress() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.sender == ext_call.return_data[12 len 20]
                            require not stor8[stor11[arg1].field_512]
                            require not stor9[stor11[arg1].field_0]
                            if arg2.length:
                                require mem[128] == sub_0b3e0ebf[arg1].field_512
                            else:
                                require 0 == sub_0b3e0ebf[arg1].field_512
                            stor8[stor11[arg1].field_512] = 1
                            stor9[stor11[arg1].field_0] = 1
                            require ext_code.size(sub_4a681a4cAddress)
                            if sub_0b3e0ebf[arg1].field_0 != sub_0b3e0ebf[arg1].field_256:
                                call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args sub_0b3e0ebf[arg1].field_0, sub_0b3e0ebf[arg1].field_256
                            else:
                                call sub_4a681a4cAddress.mint(address arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args sub_0b3e0ebf[arg1].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            mem[ceil32(arg2.length) + 128] = arg1
                            mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                            if not arg2.length % 32:
                                emit 0x25fab912: 0, Mask(224, 0, arg1), 64, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
                            else:
                                mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
                                emit 0x25fab912: 0, Mask(224, 0, arg1), 64, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
}



}
