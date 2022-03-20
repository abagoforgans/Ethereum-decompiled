contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1929]




// =====================  Runtime code  =====================


array of uint256 users;

function documents(bytes32 arg1) payable {
    mem[192] = documents[arg1][1].field_0
    idx = 192
    s = 0
    while documents[arg1][1].length + 192 > idx + 32:
        mem[idx + 32] = documents[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return documents[arg1].field_0, 
           Array(len=documents[arg1][1].length, data=mem[192 len documents[arg1][1].length + (floor32(documents[arg1][1].length - 1) + -documents[arg1][1].length + 32 % 32)])
}

function users(address arg1, uint256 arg2) payable {
    return users[arg1][arg2][0 len users[arg1][arg2].length]
}

function _fallback() payable {
  stop
}

function sub_228bc0a9(?) payable {
    users[address(msg.sender)]++
    if not users[address(msg.sender)] <= users[address(msg.sender)] + 1:
        mem[0] = sha3(address(msg.sender), 0)
        idx = users[address(msg.sender)] + 1
        while sha3(sha3(address(msg.sender), 0)) + users[address(msg.sender)] > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    users[address(msg.sender)][users[address(msg.sender)]][] = Array(len=arg1.length, data=arg1[all])
    revert 
}

function sub_c63c5bd1(?) payable {
    users[address(msg.sender)]++
    if not users[address(msg.sender)] <= users[address(msg.sender)] + 1:
        mem[0] = sha3(address(msg.sender), 0)
        idx = users[address(msg.sender)] + 1
        while sha3(sha3(address(msg.sender), 0)) + users[address(msg.sender)] > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    users[address(msg.sender)][users[address(msg.sender)]][] = Array(len=arg1.length, data=arg1[all])
    documents[arg1[all]].field_512++
    if not documents[arg1[all]].field_512 <= documents[arg1[all]].field_512 + 1:
        idx = documents[arg1[all]].field_512 + 1
        while documents[arg1[all]].field_512 > idx:
            documents[arg1[all]][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor[('array', 2, ('map', ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1'))))), ('name', 'documents', 1))) + documents[arg1[all]].field_512].field_0 = msg.sender or Mask(96, 160, stor[('array', 2, ('map', ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1'))))), ('name', 'documents', 1))) + documents[arg1[all]].field_512].field_0)
}



}
