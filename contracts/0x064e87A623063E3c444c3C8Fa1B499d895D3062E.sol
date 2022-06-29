contract main {




// =====================  Runtime code  =====================


const sub_03476207(?) = 6

const sub_3654cc3b(?) = 15

const sub_7d6bfbc2(?) = 7

const sub_daac7aa0(?) = (12 * 3600)


array of struct stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 currentReceiverIndex;
mapping of uint256 stor5;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

function currentReceiverIndex() {
    return currentReceiverIndex
}

function jackpot() {
    return stor1, stor2, stor3
}

function deposit() payable {
    require stor5[msg.sender] + (12 * 3600) < block.timestamp
    stor5[msg.sender] = block.timestamp
}

function _fallback() payable {
    if msg.value < 10^16:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if block.timestamp - stor2 < 12 * 3600:
            call msg.sender with:
               value msg.value - 10^16 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor0.length >= currentReceiverIndex:
                idx = 0
                while idx < stor0.length - 1:
                    require idx + 1 < stor0.length
                    require idx < stor0.length
                    mem[0] = 0
                    stor0[idx].field_0 = stor0[idx + 1].field_0
                    stor0[idx].field_256 = stor0[idx + 1].field_256
                    idx = idx + 1
                    continue 
                require stor0.length - 1 < stor0.length
                stor0[stor0.length - 1].field_0 = 0
                stor0[stor0.length - 1].field_256 = 0
                stor0.length--
                if stor0.length > stor0.length - 1:
                    idx = 2 * stor0.length - 1
                    while 2 * stor0.length > idx:
                        stor0[idx].field_0 = 0
                        stor0[idx].field_256 = 0
                        idx = idx + 2
                        continue 
            stor0.length++
            stor0[stor0.length].field_0 = msg.sender
            stor290D[stor0.length] = 10^16
            call 0xaa5f88495207be04682dfd7018b7d3230385813c with:
               value 7 * 10^14 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value 87 * 10^14 wei
                 gas 0 wei
            call msg.sender with:
               value 10^16 wei
                 gas 0 wei
        else:
            if 0 < stor2:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value stor3 wei
                     gas 2300 * is_zero(value) wei
            else:
                call msg.sender with:
                   value msg.value - 10^16 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor0.length >= currentReceiverIndex:
                    idx = 0
                    while idx < stor0.length - 1:
                        require idx + 1 < stor0.length
                        require idx < stor0.length
                        mem[0] = 0
                        stor0[idx].field_0 = stor0[idx + 1].field_0
                        stor0[idx].field_256 = stor0[idx + 1].field_256
                        idx = idx + 1
                        continue 
                    require stor0.length - 1 < stor0.length
                    stor0[stor0.length - 1].field_0 = 0
                    stor0[stor0.length - 1].field_256 = 0
                    stor0.length--
                    if stor0.length > stor0.length - 1:
                        idx = 2 * stor0.length - 1
                        while 2 * stor0.length > idx:
                            stor0[idx].field_0 = 0
                            stor0[idx].field_256 = 0
                            idx = idx + 2
                            continue 
                stor0.length++
                stor0[stor0.length].field_0 = msg.sender
                stor290D[stor0.length] = 10^16
                call 0xaa5f88495207be04682dfd7018b7d3230385813c with:
                   value 7 * 10^14 wei
                     gas 0 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value 87 * 10^14 wei
                     gas 0 wei
                call msg.sender with:
                   value 10^16 wei
                     gas 0 wei
}



}
