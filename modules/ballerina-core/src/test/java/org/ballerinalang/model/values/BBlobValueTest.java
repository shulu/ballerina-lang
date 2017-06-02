/*
*  Copyright (c) 2017, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
*
*  WSO2 Inc. licenses this file to you under the Apache License,
*  Version 2.0 (the "License"); you may not use this file except
*  in compliance with the License.
*  You may obtain a copy of the License at
*
*  http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing,
*  software distributed under the License is distributed on an
*  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
*  KIND, either express or implied.  See the License for the
*  specific language governing permissions and limitations
*  under the License.
*/
package org.ballerinalang.model.values;

import org.ballerinalang.core.utils.BTestUtils;
import org.ballerinalang.util.codegen.ProgramFile;
import org.ballerinalang.util.program.BLangFunctions;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

/**
 * This test class will test the behaviour of double values with expressions.
 */
public class BBlobValueTest {
    private ProgramFile bLangProgram;

    @BeforeClass(alwaysRun = true)
    public void setup() {
        bLangProgram = BTestUtils.getProgramFile("lang/values/blob-value.bal");
    }

    @Test(description = "Test blob value assignment")
    public void testBlobParameter() {
        byte[] bytes = "string".getBytes();
        BValue[] args = {new BBlob(bytes)};
        BValue[] returns = BLangFunctions.invokeNew(bLangProgram, "testBlobParameter", args);
        Assert.assertEquals(returns.length, 1);
        Assert.assertSame(returns[0].getClass(), BBlob.class);
        BBlob blob = (BBlob) returns[0];
        Assert.assertEquals(blob.blobValue(), bytes, "Invalid byte value returned.");
    }

    @Test(description = "Test blob array")
    public void testBlobArray() {
        byte[] bytes = "string".getBytes();
        BValue[] args = {new BBlob(bytes)};
        BValue[] returns = BLangFunctions.invokeNew(bLangProgram, "testBlobParameter", args);
        Assert.assertEquals(returns.length, 1);
        Assert.assertSame(returns[0].getClass(), BBlob.class);
        BBlob blob = (BBlob) returns[0];
        Assert.assertEquals(blob.blobValue(), bytes, "Invalid byte value returned.");
    }
}
