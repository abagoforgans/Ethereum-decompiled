contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 5359]




// =====================  Runtime code  =====================


#
#  - sub_02d2d49c(?)
#
array of struct workflowName;

function getWorkflowName(uint256 arg1) {
    require arg1 < workflowName.length
    return workflowName[arg1].field_0
}

function getActivityName(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    require arg2 < workflowName[arg1].field_256
    return stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 1)].field_0
}

function getWorkflowCount() {
    return workflowName.length
}

function getActivityCount(uint256 arg1) {
    require arg1 < workflowName.length
    return workflowName[arg1].field_256
}

function _fallback() payable {
    revert
}

function isIncluded(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    return workflowName[arg1].field_512 and uint8(2^arg2) != 0
}

function isPending(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    return workflowName[arg1].field_1024 and uint8(2^arg2) != 0
}

function isExecuted(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    return workflowName[arg1].field_768 and uint8(2^arg2) != 0
}

function isAuthDisabled(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    return (0 == workflowName[arg1].field_2560 and uint8(2^arg2))
}

function getExcludes(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    require arg2 < workflowName[arg1].field_1536
    s = 0
    idx = 0
    while idx < 256:
        if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 6)].field_0 and uint8(2^idx):
            s = s
            idx = idx + 1
            continue 
        s = s + 1
        idx = idx + 1
        continue 
    t = 0
    idx = 0
    while idx < 256:
        if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 6)].field_0 and uint8(2^idx):
            t = t
            idx = idx + 1
            continue 
        require t < s
        mem[(32 * t) + 224] = uint8(idx)
        t = t + 1
        idx = idx + 1
        continue 
    mem[(32 * s) + 224] = 32
    mem[(32 * s) + 256] = s
    if Mask(251, 0, s):
        mem[(32 * s) + 288] = mem[224]
        mem[(32 * s) + 320 len floor32((32 * s) - 1)] = mem[256 len floor32((32 * s) - 1)]
    return Array(len=s, data=mem[(32 * s) + 288 len 32 * s])
}

function getIncludes(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    require arg2 < workflowName[arg1].field_1280
    s = 0
    idx = 0
    while idx < 256:
        if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 5)].field_0 and uint8(2^idx):
            s = s
            idx = idx + 1
            continue 
        s = s + 1
        idx = idx + 1
        continue 
    t = 0
    idx = 0
    while idx < 256:
        if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 5)].field_0 and uint8(2^idx):
            t = t
            idx = idx + 1
            continue 
        require t < s
        mem[(32 * t) + 224] = uint8(idx)
        t = t + 1
        idx = idx + 1
        continue 
    mem[(32 * s) + 224] = 32
    mem[(32 * s) + 256] = s
    if Mask(251, 0, s):
        mem[(32 * s) + 288] = mem[224]
        mem[(32 * s) + 320 len floor32((32 * s) - 1)] = mem[256 len floor32((32 * s) - 1)]
    return Array(len=s, data=mem[(32 * s) + 288 len 32 * s])
}

function getResponses(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    require arg2 < workflowName[arg1].field_1792
    s = 0
    idx = 0
    while idx < 256:
        if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 7)].field_0 and uint8(2^idx):
            s = s
            idx = idx + 1
            continue 
        s = s + 1
        idx = idx + 1
        continue 
    t = 0
    idx = 0
    while idx < 256:
        if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 7)].field_0 and uint8(2^idx):
            t = t
            idx = idx + 1
            continue 
        require t < s
        mem[(32 * t) + 224] = uint8(idx)
        t = t + 1
        idx = idx + 1
        continue 
    mem[(32 * s) + 224] = 32
    mem[(32 * s) + 256] = s
    if Mask(251, 0, s):
        mem[(32 * s) + 288] = mem[224]
        mem[(32 * s) + 320 len floor32((32 * s) - 1)] = mem[256 len floor32((32 * s) - 1)]
    return Array(len=s, data=mem[(32 * s) + 288 len 32 * s])
}

function getMilestones(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    require arg2 < workflowName[arg1].field_2304
    s = 0
    idx = 0
    while idx < 256:
        if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 9)].field_0 and uint8(2^idx):
            s = s
            idx = idx + 1
            continue 
        s = s + 1
        idx = idx + 1
        continue 
    t = 0
    idx = 0
    while idx < 256:
        if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 9)].field_0 and uint8(2^idx):
            t = t
            idx = idx + 1
            continue 
        require t < s
        mem[(32 * t) + 224] = uint8(idx)
        t = t + 1
        idx = idx + 1
        continue 
    mem[(32 * s) + 224] = 32
    mem[(32 * s) + 256] = s
    if Mask(251, 0, s):
        mem[(32 * s) + 288] = mem[224]
        mem[(32 * s) + 320 len floor32((32 * s) - 1)] = mem[256 len floor32((32 * s) - 1)]
    return Array(len=s, data=mem[(32 * s) + 288 len 32 * s])
}

function getConditions(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    require arg2 < workflowName[arg1].field_2048
    s = 0
    idx = 0
    while idx < 256:
        if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 8)].field_0 and uint8(2^idx):
            s = s
            idx = idx + 1
            continue 
        s = s + 1
        idx = idx + 1
        continue 
    t = 0
    idx = 0
    while idx < 256:
        if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 8)].field_0 and uint8(2^idx):
            t = t
            idx = idx + 1
            continue 
        require t < s
        mem[(32 * t) + 224] = uint8(idx)
        t = t + 1
        idx = idx + 1
        continue 
    mem[(32 * s) + 224] = 32
    mem[(32 * s) + 256] = s
    if Mask(251, 0, s):
        mem[(32 * s) + 288] = mem[224]
        mem[(32 * s) + 320 len floor32((32 * s) - 1)] = mem[256 len floor32((32 * s) - 1)]
    return Array(len=s, data=mem[(32 * s) + 288 len 32 * s])
}

function getAccountWhitelist(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    s = 0
    idx = 0
    while idx < workflowName[arg1].field_3072:
        mem[0] = (13 * arg1) + sha3(0) + 12
        if 0 == stor[idx + sha3((13 * arg1) + ('name', 'workflowName', 0) + 12)].field_0 and uint8(2^arg2):
            s = s
            idx = idx + 1
            continue 
        s = s + 1
        idx = idx + 1
        continue 
    t = 0
    idx = 0
    while idx < workflowName[arg1].field_3072:
        mem[0] = (13 * arg1) + sha3(0) + 12
        if 0 == stor[idx + sha3((13 * arg1) + ('name', 'workflowName', 0) + 12)].field_0 and uint8(2^arg2):
            t = t
            idx = idx + 1
            continue 
        require idx < workflowName[arg1].field_2816
        mem[0] = (13 * arg1) + sha3(0) + 11
        require t < s
        mem[(32 * t) + 192] = stor[idx + sha3((13 * arg1) + ('name', 'workflowName', 0) + 11)].field_0
        t = t + 1
        idx = idx + 1
        continue 
    mem[(32 * s) + 192] = 32
    mem[(32 * s) + 224] = s
    if Mask(251, 0, s):
        mem[(32 * s) + 256] = mem[192]
        mem[(32 * s) + 288 len floor32((32 * s) - 1)] = mem[224 len floor32((32 * s) - 1)]
    return Array(len=s, data=mem[(32 * s) + 256 len 32 * s])
}

function canExecute(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    if workflowName[arg1].field_2560 and uint8(2^arg2) != 0:
        if workflowName[arg1].field_512 and uint8(2^arg2) != 0:
            require arg2 < workflowName[arg1].field_2048
            if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 8)].field_0 and !workflowName[arg1].field_768 and workflowName[arg1].field_512:
                require arg2 < workflowName[arg1].field_2304
                if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 9)].field_0 and workflowName[arg1].field_1024 and workflowName[arg1].field_512:
                    return 1
    else:
        idx = 0
        while uint32(idx) < workflowName[arg1].field_2816:
            mem[0] = (13 * arg1) + sha3(0) + 11
            if stor[uint32(idx) + sha3((13 * arg1) + ('name', 'workflowName', 0) + 11)].field_0 != msg.sender:
                idx = idx + 1
                continue 
            require uint32(idx) < workflowName[arg1].field_3072
            mem[0] = (13 * arg1) + sha3(0) + 12
            if 0 == stor[uint32(idx) + sha3((13 * arg1) + ('name', 'workflowName', 0) + 12)].field_0 and uint8(2^arg2):
                idx = idx + 1
                continue 
            if uint32(idx) != workflowName[arg1].field_2816:
                if workflowName[arg1].field_512 and uint8(2^arg2) != 0:
                    require arg2 < workflowName[arg1].field_2048
                    if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 8)].field_0 and !workflowName[arg1].field_768 and workflowName[arg1].field_512:
                        require arg2 < workflowName[arg1].field_2304
                        if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 9)].field_0 and workflowName[arg1].field_1024 and workflowName[arg1].field_512:
                            return 1
                        else:
                            return 0
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        if uint32(idx) != workflowName[arg1].field_2816:
            if workflowName[arg1].field_512 and uint8(2^arg2) != 0:
                require arg2 < workflowName[arg1].field_2048
                if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 8)].field_0 and !workflowName[arg1].field_768 and workflowName[arg1].field_512:
                    require arg2 < workflowName[arg1].field_2304
                    if 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 9)].field_0 and workflowName[arg1].field_1024 and workflowName[arg1].field_512:
                        return 1
    return 0
}

function execute(uint256 arg1, uint256 arg2) {
    require arg1 < workflowName.length
    if 0 == workflowName[arg1].field_2560 and uint8(2^arg2):
        idx = 0
        while uint32(idx) < workflowName[arg1].field_2816:
            mem[0] = (13 * arg1) + sha3(0) + 11
            if stor[uint32(idx) + sha3((13 * arg1) + ('name', 'workflowName', 0) + 11)].field_0 != msg.sender:
                idx = idx + 1
                continue 
            require uint32(idx) < workflowName[arg1].field_3072
            mem[0] = (13 * arg1) + sha3(0) + 12
            if 0 == stor[uint32(idx) + sha3((13 * arg1) + ('name', 'workflowName', 0) + 12)].field_0 and uint8(2^arg2):
                idx = idx + 1
                continue 
            require uint32(idx) != workflowName[arg1].field_2816
            require workflowName[arg1].field_512 and uint8(2^arg2) != 0
            require arg2 < workflowName[arg1].field_2048
            require 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 8)].field_0 and !workflowName[arg1].field_768 and workflowName[arg1].field_512
            require arg2 < workflowName[arg1].field_2304
            require 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 9)].field_0 and workflowName[arg1].field_1024 and workflowName[arg1].field_512
            workflowName[arg1].field_768 = uint8(2^arg2)
            workflowName[arg1].field_1024 = uint8(!2^arg2) and workflowName[arg1].field_1024
            require arg2 < workflowName[arg1].field_1280
            require arg2 < workflowName[arg1].field_1536
            workflowName[arg1].field_512 = workflowName[arg1].field_512 and !stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 6)].field_0 or stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 5)].field_0
            require arg2 < workflowName[arg1].field_1792
            workflowName[arg1].field_1024 = stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 7)].field_0
            emit LogExecution(arg1, arg2, msg.sender);
        require uint32(idx) != workflowName[arg1].field_2816
    require workflowName[arg1].field_512 and uint8(2^arg2) != 0
    require arg2 < workflowName[arg1].field_2048
    require 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 8)].field_0 and !workflowName[arg1].field_768 and workflowName[arg1].field_512
    require arg2 < workflowName[arg1].field_2304
    require 0 == stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 9)].field_0 and workflowName[arg1].field_1024 and workflowName[arg1].field_512
    workflowName[arg1].field_768 = uint8(2^arg2)
    workflowName[arg1].field_1024 = uint8(!2^arg2) and workflowName[arg1].field_1024
    require arg2 < workflowName[arg1].field_1280
    require arg2 < workflowName[arg1].field_1536
    workflowName[arg1].field_512 = workflowName[arg1].field_512 and !stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 6)].field_0 or stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 5)].field_0
    require arg2 < workflowName[arg1].field_1792
    workflowName[arg1].field_1024 = stor[arg2 + sha3((13 * arg1) + ('name', 'workflowName', 0) + 7)].field_0
    emit LogExecution(arg1, arg2, msg.sender);
}



}
