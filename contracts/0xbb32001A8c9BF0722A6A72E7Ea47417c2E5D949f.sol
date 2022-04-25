contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[1404 len 1803]
    require create.new_address
    stor4 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x410b68776d3d03123bf9af4fd897473d92412345
    stor3 = 0xe3518cd90e853373de45b6492159d900d7fd1e12
    stor2 = 20
    stor7 = 1000 * 10^18
    stor5 = 420360 * 24 * 3600
    stor6 = 28
    return code.data[235 len 1169]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor2;
address stor3;
address tokenAddress;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function _fallback() payable {
    require block.timestamp > stor5
    require block.timestamp < stor5 + (24 * 3600 * stor6)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor7:
        require stor7
        require msg.value * stor7 / stor7 == msg.value
    if block.timestamp < stor5 + (24 * 3600 * stor6 / 4):
        require (msg.value * stor7 / 10^18 / 4) + (msg.value * stor7 / 10^18) >= msg.value * stor7 / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * stor7 / 10^18 / 4) + (msg.value * stor7 / 10^18)
    else:
        if Mask(254, 2, 24 * 3600 * stor6):
            require 24 * 3600 * stor6 / 4
            require Mask(254, 2, 24 * 3600 * stor6) >> 1 / 24 * 3600 * stor6 / 4 == 2
        if block.timestamp < stor5 + (24 * 3600 * stor6 / 4):
            if block.timestamp < stor5 + (Mask(254, 2, 24 * 3600 * stor6) >> 1):
                require msg.value * stor7 / 10^18 >= msg.value * stor7 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * stor7 / 10^18
            else:
                if Mask(254, 2, 24 * 3600 * stor6):
                    require 24 * 3600 * stor6 / 4
                    require 3 * 24 * 3600 * stor6 / 4 / 24 * 3600 * stor6 / 4 == 3
                if block.timestamp >= stor5 + (3 * 24 * 3600 * stor6 / 4):
                    require msg.value * stor7 / 10^18 >= msg.value * stor7 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * stor7 / 10^18
                else:
                    require (msg.value * stor7 / 10^18 / 20) + (msg.value * stor7 / 10^18) >= msg.value * stor7 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (msg.value * stor7 / 10^18 / 20) + (msg.value * stor7 / 10^18)
        else:
            if block.timestamp < stor5 + (Mask(254, 2, 24 * 3600 * stor6) >> 1):
                require (msg.value * stor7 / 10^18 / 10) + (msg.value * stor7 / 10^18) >= msg.value * stor7 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value * stor7 / 10^18 / 10) + (msg.value * stor7 / 10^18)
            else:
                if Mask(254, 2, 24 * 3600 * stor6):
                    require 24 * 3600 * stor6 / 4
                    require Mask(254, 2, 24 * 3600 * stor6) >> 1 / 24 * 3600 * stor6 / 4 == 2
                if block.timestamp < stor5 + (Mask(254, 2, 24 * 3600 * stor6) >> 1):
                    require msg.value * stor7 / 10^18 >= msg.value * stor7 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * stor7 / 10^18
                else:
                    if Mask(254, 2, 24 * 3600 * stor6):
                        require 24 * 3600 * stor6 / 4
                        require 3 * 24 * 3600 * stor6 / 4 / 24 * 3600 * stor6 / 4 == 3
                    if block.timestamp >= stor5 + (3 * 24 * 3600 * stor6 / 4):
                        require msg.value * stor7 / 10^18 >= msg.value * stor7 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * stor7 / 10^18
                    else:
                        require (msg.value * stor7 / 10^18 / 20) + (msg.value * stor7 / 10^18) >= msg.value * stor7 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value * stor7 / 10^18 / 20) + (msg.value * stor7 / 10^18)
    require ext_call.success
    if msg.value * stor7 / 10^18:
        require msg.value * stor7 / 10^18
        require stor2 * msg.value * stor7 / 10^18 / msg.value * stor7 / 10^18 == stor2
    require -stor2 + 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor3, stor2 * msg.value * stor7 / 10^18 / -stor2 + 100
    require ext_call.success
}

function createTokens() payable {
    require block.timestamp > stor5
    require block.timestamp < stor5 + (24 * 3600 * stor6)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor7:
        require stor7
        require msg.value * stor7 / stor7 == msg.value
    if block.timestamp < stor5 + (24 * 3600 * stor6 / 4):
        require (msg.value * stor7 / 10^18 / 4) + (msg.value * stor7 / 10^18) >= msg.value * stor7 / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * stor7 / 10^18 / 4) + (msg.value * stor7 / 10^18)
    else:
        if Mask(254, 2, 24 * 3600 * stor6):
            require 24 * 3600 * stor6 / 4
            require Mask(254, 2, 24 * 3600 * stor6) >> 1 / 24 * 3600 * stor6 / 4 == 2
        if block.timestamp < stor5 + (24 * 3600 * stor6 / 4):
            if block.timestamp < stor5 + (Mask(254, 2, 24 * 3600 * stor6) >> 1):
                require msg.value * stor7 / 10^18 >= msg.value * stor7 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * stor7 / 10^18
            else:
                if Mask(254, 2, 24 * 3600 * stor6):
                    require 24 * 3600 * stor6 / 4
                    require 3 * 24 * 3600 * stor6 / 4 / 24 * 3600 * stor6 / 4 == 3
                if block.timestamp >= stor5 + (3 * 24 * 3600 * stor6 / 4):
                    require msg.value * stor7 / 10^18 >= msg.value * stor7 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * stor7 / 10^18
                else:
                    require (msg.value * stor7 / 10^18 / 20) + (msg.value * stor7 / 10^18) >= msg.value * stor7 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (msg.value * stor7 / 10^18 / 20) + (msg.value * stor7 / 10^18)
        else:
            if block.timestamp < stor5 + (Mask(254, 2, 24 * 3600 * stor6) >> 1):
                require (msg.value * stor7 / 10^18 / 10) + (msg.value * stor7 / 10^18) >= msg.value * stor7 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value * stor7 / 10^18 / 10) + (msg.value * stor7 / 10^18)
            else:
                if Mask(254, 2, 24 * 3600 * stor6):
                    require 24 * 3600 * stor6 / 4
                    require Mask(254, 2, 24 * 3600 * stor6) >> 1 / 24 * 3600 * stor6 / 4 == 2
                if block.timestamp < stor5 + (Mask(254, 2, 24 * 3600 * stor6) >> 1):
                    require msg.value * stor7 / 10^18 >= msg.value * stor7 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * stor7 / 10^18
                else:
                    if Mask(254, 2, 24 * 3600 * stor6):
                        require 24 * 3600 * stor6 / 4
                        require 3 * 24 * 3600 * stor6 / 4 / 24 * 3600 * stor6 / 4 == 3
                    if block.timestamp >= stor5 + (3 * 24 * 3600 * stor6 / 4):
                        require msg.value * stor7 / 10^18 >= msg.value * stor7 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * stor7 / 10^18
                    else:
                        require (msg.value * stor7 / 10^18 / 20) + (msg.value * stor7 / 10^18) >= msg.value * stor7 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value * stor7 / 10^18 / 20) + (msg.value * stor7 / 10^18)
    require ext_call.success
    if msg.value * stor7 / 10^18:
        require msg.value * stor7 / 10^18
        require stor2 * msg.value * stor7 / 10^18 / msg.value * stor7 / 10^18 == stor2
    require -stor2 + 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor3, stor2 * msg.value * stor7 / 10^18 / -stor2 + 100
    require ext_call.success
}



}
